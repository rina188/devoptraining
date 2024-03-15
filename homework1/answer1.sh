SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Script directory: $SCRIPT_DIR"

for((i=2;i<13;i++))
do 
    mkdir "$SCRIPT_DIR/LAB$i"
done