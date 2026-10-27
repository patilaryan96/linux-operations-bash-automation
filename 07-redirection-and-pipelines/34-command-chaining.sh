 #!/usr/bin/env bash
 
 echo "Day 07 - Command Chaining"

echo "Running commands using &&"

mkdir -p day7-test && echo "Directory created successfully"

echo "Checking command using ||"

cd day7-test || echo "Failed to enter directory"

echo "Running commands using ;"

echo "Command 1"; echo "Command 2"; echo "Command 3"

echo "Command chaining completed."
