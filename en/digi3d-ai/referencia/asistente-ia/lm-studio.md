# Configuring LM Studio
<!-- id: lm-studio -->
<!-- origen: bb183c52d5b43f2c6e93b30f609d010b3c36f6be -->

[LM Studio](https://lmstudio.ai) is a free desktop application that runs language models on your computer. With LM Studio, the [AI assistant](README.md) works offline, without usage charges or sending drawing data outside your computer.

This tutorial uses OpenAI's **gpt-oss-20b**, which supports *tool use* and fits on a graphics card with 16 GB or more.

## Requirements

- A graphics card with **at least 16 GB of video memory** (VRAM) for gpt-oss-20b. With less memory, LM Studio can split the model between graphics and system memory, but responses are much slower.
- About **13 GB of free disk space** for the model.
- **A context of at least 32,768 *tokens*.** Context is the amount of text a model can consider at once. Digi3D.AI's assistant instructions occupy about 22,000 *tokens*, so a smaller context is insufficient.

## 1. Installing LM Studio

1. Download LM Studio from [lmstudio.ai](https://lmstudio.ai) and install it.
2. Open LM Studio.

## 2. Downloading the model

1. Open **Discover** (magnifying glass icon in the left sidebar).
2. Search for `gpt-oss-20b`.
3. Choose the **openai** model with **MXFP4** quantization. Quantization is the model's storage format; MXFP4 is gpt-oss-20b's original format.
4. Check for the *Tool use* label. Without it, the model replies with code instead of working on the drawing.
5. Click **Download** and wait for completion.

## 3. Configuring model context

Set context as the model default so you need not repeat the setting on each load:

1. Open **My Models** (folder icon in the left sidebar).
2. Click **⚙** beside `gpt-oss-20b`.
3. Under **Load**, configure:

   | Parameter | Value | Reason |
   | --- | --- | --- |
   | **Context Length** | `32768` or more | Assistant instructions occupy about 22,000 *tokens*. |
   | **GPU Offload** | Slider all the way right | Runs all model layers on the graphics card. |
   | **Flash Attention** | Enabled | Calculates attention in blocks: the same result with less memory and faster processing for long contexts. |

If the model was already loaded, changes take effect only after **Eject** and reloading.

## 4. Loading the model and starting the server

1. Open **Developer** (console icon in the left sidebar).
2. Load `gpt-oss-20b` using **Select a model to load** at the top.
3. Enable the server with **Status: Running**. It listens on port `1234`.
4. In the right pane, check that the loaded model uses the context configured in step 3.

Load the model **only once**. Loading another copy gives it another identifier (such as `openai/gpt-oss-20b:2`), and both copies consume graphics memory.

## 5. Configuring Digi3D.AI

1. In Digi3D.AI, select **Window → AI chat**.
2. Select **LM Studio** in **Provider**. LM Studio needs no API key.
3. On the same computer, keep the default URL: `http://localhost:1234/v1`. For another network computer, click **⚙** and replace `localhost` with that computer's name or IP address in LM Studio's **URL**, under **AI assistant** in Configuration. Click **Accept**.
4. **Model** shows models **loaded** in LM Studio. Select `openai/gpt-oss-20b`.

## 6. Testing the configuration

Enter an [example request](README.md#example-requests). Start with queries, such as:

- *“How many geometries have each code? Give me the ten most frequent.”*
- *“What are the maximum and minimum elevations in the entire drawing?”*

The **first request** in a conversation is slowest because the model processes all assistant instructions. Subsequent requests are faster.

LM Studio's **Developer** tab shows each request from Digi3D.AI in *Developer Logs*.

## Troubleshooting

| Message or symptom | Cause and solution |
| --- | --- |
| *Could not retrieve the model list…* | LM Studio's server is stopped or the URL is incorrect. Check **Status** under **Developer** and click **↻** in the chat pane. |
| **Model** shows only **Other...** | No model loaded in LM Studio. Load it (step 4) and click **↻**. |
| *No model selected for LM Studio* | Select a model in **Model**. |
| The request fails or the assistant ignores instructions | Model context is below 32,768 *tokens*. Check **Context Length** (step 3), eject and reload. |
| The assistant replies with code instead of performing the task | The model does not support tool use. Use one labeled *Tool use*. |
| The first response takes a long time | The whole model does not fit on the graphics card. Check that **GPU Offload** is at maximum and no other model is loaded. |
| Memory error when loading the model | Another model is loaded in LM Studio or Ollama. Eject it before loading gpt-oss-20b. |
