
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

count=$(find file/ -maxdepth 1 -type f -name "*.swp" | wc -l)
if [ $count -ne 0 ]; then
   rm -rf file/*.swp
else
   echo "No swp file found!"
fi