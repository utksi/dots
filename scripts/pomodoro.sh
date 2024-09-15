#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p ~/.pomodoro

# Function to log sessions
log_session() {
    local message="$1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> ~/.pomodoro/pomo.log
}

# Handle Ctrl+C interruption
handle_interruption() {
    log_session "Pomodoro session interrupted by user."
    echo -e "\nTimer interrupted! Exiting Pomodoro."
    exit 1
}

trap 'handle_interruption' SIGINT

# Functions for work and rest
work() {
    timer 38m
    if [ $? -ne 0 ]; then  # Check exit status of timer
        handle_interruption
    fi
    terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/astronaut.jpg'\
        -sound Crystal
}

rest() {
    timer 7m
    if [ $? -ne 0 ]; then  # Check exit status of timer
        handle_interruption
    fi
    terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/astronaut.jpg'\
        -sound Crystal
}

# Main Pomodoro function
pomodoro() {
    local sessions=${1:-3}

    for (( i=1; i<=$sessions; i++ )); do
        echo "Starting work session $i/$sessions..."
        log_session "Started work session $i/$sessions"
        work

        if (( i != sessions )); then
            echo "Starting rest session $i/$sessions..."
            log_session "Started rest session $i/$sessions"
            rest
        fi
    done

    # Prompt user to continue after the specified number of sessions
    echo "Would you like to continue for more sessions? (y/n)"
    read -t 600 -p "Enter within 10 minutes: " choice  # 10 minutes (1 rest session) to decide

    if [[ $choice == "y" || $choice == "Y" ]]; then
        echo "How many more work sessions would you like?"
        read -p "Enter number of sessions: " additional_sessions
        pomodoro $additional_sessions
    else
        log_session "All sessions completed!"
        echo "All sessions completed!"
    fi
}

# Run the Pomodoro function
pomodoro $1

