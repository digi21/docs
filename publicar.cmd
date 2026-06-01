@echo off

if not exist mdbook.exe (
    echo "No existe el programa mdbook.exe. Descárgalo de https://github.com/rust-lang/mdBook/releases"
    goto fin
)

mdbook build src -d ..\book
git worktree add gh-pages gh-pages
robocopy book gh-pages /s
pushd gh-pages
git add -A
git commit -m "Actualizada ayuda"
popd
git worktree remove gh-pages
rmdir /s /q book
git push -u origin gh-pages

:fin