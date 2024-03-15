SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for((i=2;i<13;i++))
do 
    if [ ! -d "$SCRIPT_DIR/lab$i" ]; then
        mkdir "$SCRIPT_DIR/lab$i"
    fi
done

