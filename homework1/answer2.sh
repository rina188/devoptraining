
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# echo "Script directory: $SCRIPT_DIR"

find "$SCRIPT_DIR" -mindepth 1 -maxdepth 1 -type d | sort -k1,1 | while IFS= read -r folder; do
    
    folderName=$(echo "$(basename "$folder")")
    # mv "$folder" "$SCRIPT_DIR/LAB"
    prefix=$(echo "$folderName" | sed 's/[0-9]*$//')
    suffix=$(echo "$folderName" | sed 's/^[A-Za-z]*//')
    newFolder="${prefix}0${suffix}"

    echo "newFolder: $newFolder"  
    mv $folder $newFolder
done
# for((i=2;i<13;i++))
# do 
#     mkdir "$SCRIPT_DIR/LAB$i"
# done