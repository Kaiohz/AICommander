#!/bin/bash

# Prompt the user for input
echo "Describe your command :"
read USER_REQUEST

# # Prepare the request body (adjust role and text as needed)
REQUEST_BODY=$(cat <<EOF
{
  "contents": [
    {
      "role": "user",
      "parts": [
        {
          "text": "${USER_REQUEST}"
        }
      ]
    }
  ],
  "systemInstruction": {
    "role": "user",
    "parts": [
      {
        "text": "You will receive a user request and give the unix command related to the user request. Answer only with the command."
      }
    ]
  },
  "generationConfig": {
    "temperature": 0,
    "maxOutputTokens": 100,
    "responseMimeType": "text/plain"
  }
}
EOF
)

# Send the request and capture the response
RESPONSE=$(curl -sX POST https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${AI_COMMANDER_API_KEY} -H 'Content-Type: application/json' -d "$REQUEST_BODY")
COMMAND=$(jq -r '.candidates[0].content.parts[0].text' <<< "$RESPONSE")
ESCAPED_COMMAND=$(echo $COMMAND | sed 's/`//g')
echo "Command: ${ESCAPED_COMMAND}"

if [[ $? -eq 0 ]]; then
  $ESCAPED_COMMAND
else
  echo "Error executing command. Check API response for details."
  echo "API Response: $RESPONSE"
fi
