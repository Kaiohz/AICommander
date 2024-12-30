#!/bin/sh

# Run the ollama command with the first parameter and capture the output
response=$(ollama run llama3.2 "You will be provided with a question, you have to provide the commad line that fit the best with the question with no premable or explanations do not use quotes. question : \"$@\"")

# Display the response to the user
echo "Command: $response"

# Ask the user if they want to execute the command
read -p "Do you want to run this command? (yes/no): " user_input

# Check user's input and execute the command if they agree
if [[ "$user_input" =~ ^[Yy][Ee][Ss]$ || "$user_input" =~ ^[Yy]$ ]]; then
    echo "Running the command..."
    eval "$response"
else
    echo "Command not executed."
fi
