echo "Enter the path:"
read inputDir

if [ ! -d "$inputDir" ]; then
    echo "'$inputDir' is not found."
    exit 1
fi


for filename in "$inputDir"/*; do
    if [ ! -e "$filename" ]; then
        echo "File '$filename' does not exist."
        continue
    fi
    
    if [ -f "$filename" ]; then
        echo "$filename is a file."
    elif [ -d "$filename" ]; then
        echo "$filename is a folder."
    fi
done
