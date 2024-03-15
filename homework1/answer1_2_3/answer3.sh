
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# echo "Script directory: $SCRIPT_DIR"

find "$SCRIPT_DIR" -mindepth 1 -maxdepth 1 -type d | sort -k1,1 | while IFS= read -r folder; do
    
    # if[ ! -d "$folder" ]; then

        upperCaseFolder=$(echo "$(basename "$folder")" | tr '[:lower:]' '[:upper:]')
        if [ "$(basename "$folder")" != "$upperCaseFolder" ]; then
            # Rename the folder to its uppercase version
            mv "$folder" "$SCRIPT_DIR/$upperCaseFolder"
        else
            echo "Folder is already in uppercase: $upperCaseFolder"
        fi
done