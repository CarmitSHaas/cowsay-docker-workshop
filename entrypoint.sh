#!/bin/sh

# Check if a port argument is provided, default to 8080 if not
if [ -z "$1" ]; then
    port=8080
else
    port="$1"
fi
# Set the PORT environment variable
export PORT="$port"
# Execute the server
npm start