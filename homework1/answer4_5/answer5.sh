
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "File Folder is : $SCRIPT_DIR/file"
echo "Input file to remove:"
read arg1
count=$(find $SCRIPT_DIR/file/ -maxdepth 1 -type f -name "$arg1.*" | wc -l)
if [ $count -ne 0 ]; then
   rm -rf file/$arg1.*
   echo "File $arg1 is removed!"
else
   echo "No file arg1 found!"
fi