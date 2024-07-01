#!/bin/bash

# Total number of steps
total_steps=100

# Initial progress
progress=0

# Display initial state
echo -n "[----------------------------------------------------------------------------------------------------] 0% "

# Simulation of a task
while [ $progress -le $total_steps ]; do
    # Calculate the number of '#' to display
    let filled_slots=progress*100/total_steps

    # Create the progress bar string
    bar=""
    for ((i=0; i<$filled_slots; i++)); do
        bar="${bar}#"
    done
    
    # Create the remaining bar string
    for ((i=filled_slots; i<100; i++)); do
        bar="${bar}-"
    done
    
    # Calculate percentage
    let percentage=progress*100/total_steps

    # Print the progress bar
    echo -ne "\r[${bar}] ${percentage}% "

    # Simulate a task by sleeping for 0.1 seconds
    sleep 0.1
    
    # Update progress
    let progress++
done

echo # Print a newline
