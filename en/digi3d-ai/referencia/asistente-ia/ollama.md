# Configuring Ollama
<!-- id: ollama -->
<!-- origen: e2cde37cceeb401fcad5022aad5f9da4a0343d0c -->

[Ollama](https://ollama.com) is a free, open-source program that runs language models as a Windows service. With Ollama, the [AI assistant](README.md) works offline, without usage charges or sending drawing data outside your network.

Unlike [LM Studio](lm-studio.md), Ollama is controlled from the command line and starts with Windows. It therefore suits a **company server**: a computer with a powerful graphics card runs the model and multiple Digi3D.AI workstations connect to it.

This tutorial uses OpenAI's **gpt-oss:20b**, which supports tool use and fits on a graphics card with 16 GB or more.

## Requirements

- A graphics card with **at least 16 GB of video memory** (VRAM) for gpt-oss:20b. With less memory, Ollama splits the model between graphics and system memory, but responses are much slower.
- About **14 GB of free disk space** for the model.
- **A context of at least 32,768 *tokens*.** Context is the amount of text a model can consider at once. Digi3D.AI's assistant instructions occupy about 22,000 *tokens*. Ollama's default context is smaller, so **increase it** (step 3).

## 1. Installing Ollama

1. Download Ollama from [ollama.com](https://ollama.com) and install it.
2. It then runs in the background: its icon appears in the system tray (beside the Windows clock), and it listens on port `11434`.

Running `ollama` without arguments in a console shows a menu for installing other vendors' coding agents (OpenClaw, Cline, Qwen Code…). Digi3D.AI does not need them: exit with **Esc**.

## 2. Downloading the model

Open a console (**Command Prompt** or **PowerShell**) and run:

```
ollama pull gpt-oss:20b
```

The download is about 13 GB. Afterwards, check that the model appears in the downloaded model list:

```
ollama list
```

## 3. Increasing context

Digi3D.AI communicates with Ollama through its OpenAI-compatible API. That API cannot specify context size per request: Ollama uses its default. Increase it in either of these ways.

**From the Ollama application:**

1. Right-click Ollama's system tray icon and open **Settings**.
2. Increase **Context length** to `32768` *tokens* or more.

**With an environment variable**, if your Ollama version lacks that setting:

1. Run in a console:

   ```
   setx OLLAMA_CONTEXT_LENGTH 32768
   ```

2. Close Ollama from its system tray icon (**Quit Ollama**).
3. Reopen it from Start so it reads the new variable.

## 4. Checking model loading

1. Load the model with a test question:

   ```
   ollama run gpt-oss:20b "hola"
   ```

2. Query loaded models:

   ```
   ollama ps
   ```

3. Check these columns:

   | Column | Expected value | If different |
   | --- | --- | --- |
   | **CONTEXT** | `32768` or more | Repeat step 3. |
   | **PROCESSOR** | `100% GPU` | The whole model does not fit on the graphics card, so responses will be slow. Close other programs using the card, such as LM Studio with a loaded model. |

Ollama unloads the model after several idle minutes and reloads it for the next request. The first request after a pause is therefore slower.

## 5. Configuring Digi3D.AI

1. In Digi3D.AI, select **Window → AI chat**.
2. Select **Ollama** in **Provider**. Ollama needs no API key.
3. On the same computer, keep the default URL: `http://localhost:11434/v1`. For a network server, click **⚙** and replace `localhost` with its name or IP address in Ollama's **URL**, under **AI assistant** in Configuration. Click **Accept** (see *Using Ollama as a network server*).
4. Select `gpt-oss:20b` in **Model**.

## 6. Testing the configuration

Enter an [example request](README.md#example-requests). Start with queries, such as:

- *“How many geometries have each code? Give me the ten most frequent.”*
- *“What are the maximum and minimum elevations in the entire drawing?”*

The **first request** in a conversation is slowest because the model processes all assistant instructions. Subsequent requests are faster.

## Using Ollama as a network server

By default, Ollama accepts connections only from its own computer. To connect other Digi3D.AI workstations:

1. On the server, run in a console:

   ```
   setx OLLAMA_HOST 0.0.0.0:11434
   ```

2. Close Ollama from its system tray icon and reopen it.
3. Allow inbound TCP connections to port `11434` in the server's Windows Firewall.
4. On each workstation, configure Digi3D.AI's URL as `http://servidor:11434/v1`, replacing `servidor` with the server name or IP address.

Ollama requires no password: any computer reaching port `11434` can use the model. Open the port only to the internal network.

## Useful commands

| Command | Action |
| --- | --- |
| `ollama pull gpt-oss:20b` | Downloads a model. Model names are at [ollama.com/library](https://ollama.com/library). |
| `ollama list` | Lists downloaded models. |
| `ollama ps` | Lists loaded models, their contexts and whether they are on the graphics card. |
| `ollama stop gpt-oss:20b` | Unloads a model from memory. |
| `ollama rm gpt-oss:20b` | Deletes a downloaded model from disk. |

## Troubleshooting

| Message or symptom | Cause and solution |
| --- | --- |
| *Could not retrieve the model list…* | Ollama is stopped or the URL is incorrect. Check its system tray icon and click **↻** in the chat pane. |
| **Model** shows only **Other...** | No model downloaded. Run `ollama pull gpt-oss:20b` and click **↻**. |
| *No model selected for Ollama* | Select a model in **Model**. |
| The request fails or the assistant ignores instructions | Context is below 32,768 *tokens*. Check **CONTEXT** in `ollama ps` and repeat step 3. |
| The assistant replies with code instead of performing the task | The model does not support tool use. At [ollama.com/library](https://ollama.com/library), choose one labeled **tools**. |
| Responses are very slow | **PROCESSOR** in `ollama ps` is not `100% GPU`: the model does not fit on the graphics card. Close other programs using it. |
