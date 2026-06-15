#!/usr/bin/env bash

# Function to handle SIGINT when 'force' is not used
handle_sigint() {
    echo ""
    echo "Չար գործերն ավարտված են!"
    exit 0  # Exit the script gracefully
}

# Function to handle SIGINT when 'force' is used
ignore_sigint() {
    echo ""
    echo "ՀԱՀԱ՜ Ինձ չես կանգնեցնի!"
    # Do not exit, just print a message
}

# Check if the first argument is "force"
if [ "$1" = "force" ]; then
    # Ignoring SIGINT (Ctrl+C) with custom function
    trap ignore_sigint SIGINT
    echo "SIGINT-ն անտեսվում է 'force' argument-ի պատճառով"
else
    # Normal SIGINT handling
    trap handle_sigint SIGINT
fi

# Infinite loop
while true; do
    echo "Սարսափելի բաներ եմ անում..."
    sleep 1  # Sleep for 1 second to prevent overwhelming the CPU
done
