# AI Commander

This is a README file for the AI Commander project. The AI Commander is a specialized AI program that generates Unix commands based on user prompts.

## Usage

To use the AI Commander, follow the steps below:

1. Make sure you have the necessary dependencies installed.
2. Run the script `ai_commander.sh` with the user request as an argument.

```bash
./aicommander.sh
```

3. The AI Commander will generate a Unix command related to the user request and execute it.

## Dependencies

The AI Commander relies on the following dependencies:

- `curl`
- `jq`
- `gemini`

Make sure these dependencies are installed before running the script.

## API Key

To use the AI Commander, you need to obtain an API key from the Gemini 1.5 Flash API. Replace the placeholder `AI_COMMANDER_API_KEY` in the script with your actual API key.

## Error Handling

If there is an error executing the command or if the API response indicates an error, the AI Commander will display an error message and the API response details.

Please note that the AI Commander is a work in progress and may not always provide accurate or optimal commands. Use the generated commands with caution.

## Future

It's now only compatible with gemini but other will be added soon.
