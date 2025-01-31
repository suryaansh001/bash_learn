#!/bin/bash

echo "Enter the filename to unzip"
read FILENAME

unzip_file() {
    echo "The current directory is: $(pwd)"
    echo "The file name is: $FILENAME"
    
    if [[ -f "$FILENAME" ]]; then 
        echo "Unzipping the file..."
        unzip "$FILENAME"
        echo "File unzipped successfully."
    else
        echo "Error: File does not exist."
    fi
}

unzip_file

