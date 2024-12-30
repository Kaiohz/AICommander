# AI Commander

This is a README file for the AI Commander project. The AI Commander is a specialized AI program that generates Unix commands based on user prompts.

## Usage

To use the AI Commander, follow the steps below:

1. Make sure you have the necessary dependencies installed.
2. Run the script `aicommander.sh` with the user request as an argument.

```bash
./aicommander.sh
```

3. The AI Commander will generate a Unix command related to the user request and execute it.

## Installation

To install AI Commander in your system PATH:

1. Make the script executable:
```bash
chmod +x aicommander.sh
```

2. Create a symbolic link in a directory that's in your PATH (e.g., /usr/local/bin):
```bash
sudo ln -s "$(pwd)/aicommander.sh" your/bin/path/aicommander
$SHELL
```

3. Now you can run the command from anywhere using:
```bash
aicommander how to list all my files
```

## Dependencies

The AI Commander relies on the following dependencies:

- `ollama`

Make sure these dependencies are installed before running the script.

Please note that the AI Commander is a work in progress and may not always provide accurate or optimal commands. Use the generated commands with caution.

