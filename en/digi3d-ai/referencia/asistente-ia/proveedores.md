# Cloud providers
<!-- id: proveedores -->
<!-- origen: 031773db86a055eecd5144c7c2ec99702362af65 -->

This page explains how to configure each internet service provider in the [AI chat pane](README.md). To run a model on your computer, see [Configuring LM Studio](lm-studio.md) or [Configuring Ollama](ollama.md).

All providers on this page charge the API key holder for usage. Check each provider's pricing before starting.

## Common steps

1. Create a provider account and generate an **API key**. Each section links to its provider's website.
2. In Digi3D.AI, select **Window → AI chat**.
3. Select the provider in **Provider**.
4. Click **⚙** to open Configuration under **AI assistant**. Expand the provider item, paste the key in **API key** and click **Accept**. Digi3D.AI requests the models available to your account.
5. Select a model in **Model**.
6. Enter an [example request](README.md#example-requests) to check that the provider works.

## Claude (Anthropic)

| Field | Value |
| --- | --- |
| API key | Create and manage it at [platform.claude.com/settings/keys](https://platform.claude.com/settings/keys). |
| URL | `https://api.anthropic.com/v1` (the default). |
| Model | The list suggests Opus 5.5, Sonnet 5, Fable 5.1 and Haiku 4.5, plus models returned by Anthropic for your account. |

Haiku 4.5 is the fastest, least expensive model and suffices for most requests. Larger models reason better through multistep requests at a higher cost.

## OpenAI

| Field | Value |
| --- | --- |
| API key | Create and manage it at [platform.openai.com/api-keys](https://platform.openai.com/api-keys). |
| URL | `https://api.openai.com/v1` (the default). |
| Model | The list shows your account's text models. Digi3D.AI excludes image, voice, transcription and *embedding* models because the assistant cannot use them. |

## Azure OpenAI

Azure OpenAI serves OpenAI models from a Microsoft Azure subscription. It is commonly used by companies already using Azure services.

| Field | Value |
| --- | --- |
| API key | The Azure OpenAI resource key in the Azure portal: resource → **Keys and Endpoint**. |
| URL | The resource endpoint ending in `/openai/v1`. For example: `https://mi-recurso.openai.azure.com/openai/v1`. This field is initially empty and is required. |
| Model | The **deployment name** you created in Azure, rather than the model name. Select **Other...** and enter it. |

Azure does not allow Digi3D.AI to query your deployments, so no list is shown.

## Kimi (Moonshot AI)

| Field | Value |
| --- | --- |
| API key | Create and manage it at [platform.kimi.ai/console/api-keys](https://platform.kimi.ai/console/api-keys). |
| URL | `https://api.moonshot.ai/v1` (the default). |
| Model | The list suggests Kimi models, plus those returned by Moonshot AI for your account. |

## OpenRouter

OpenRouter provides access to many vendors' models with one API key.

| Field | Value |
| --- | --- |
| API key | Create and manage it at [openrouter.ai/settings/keys](https://openrouter.ai/settings/keys). |
| URL | `https://openrouter.ai/api/v1` (the default). |
| Model | The list shows all OpenRouter models. Choose one supporting **tool calling**, which the assistant needs to work on the drawing. |

## OpenAI-compatible server

The **OpenAI-compatible** provider supports any other server implementing the OpenAI API, such as a company server.

| Field | Value |
| --- | --- |
| API key | Whatever the server requires. Leave empty if not required. |
| URL | Server address, usually ending in `/v1`. For example: `http://servidor:8000/v1`. |
| Model | The list shows models returned by the server. If none appear, select **Other...** and enter the identifier. |

The model must support tool calling and a context of at least 32,768 *tokens*.

## Troubleshooting

| Message or symptom | Cause and solution |
| --- | --- |
| *No model selected for…* | **Model** is empty. Select a model or enter its identifier using **Other...**. |
| *Could not retrieve the model list…* | Incorrect URL or API key, or no provider connection. Check with **⚙** (**AI assistant** in Configuration) and click **↻**. |
| *HTTP error 401* | Invalid or expired API key. Generate another on the provider's website. |
| *HTTP error 429* | Account usage limit or balance exceeded. Digi3D.AI retries up to 3 times; if it persists, check the account on the provider's website. |
| The assistant replies with code instead of performing the task | The model does not support tool calling. Select another model. |
