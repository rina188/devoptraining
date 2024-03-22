SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for((i=2;i<13;i++))
do 
    if [ ! -d "$SCRIPT_DIR/LAB$i" ]; then
        mkdir "$SCRIPT_DIR/LAB$i"
    fi
done

