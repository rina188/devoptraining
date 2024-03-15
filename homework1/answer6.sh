echo "Following system information"
echo "User logged: $USER"
echo "Current Shell: $PWD"
echo "Number of users logged in: $(who | wc -l)"
echo "Available shells in system:"
cat /etc/shells
echo "Hard disk information:"
df -h
echo "CPU information:"
csysctl -n machdep.cpu.brand_string
echo "Memory information:"
sysctl -n hw.memsize | awk '{print $0/1073741824 " GB"}'gi
echo "File system information:"
diskutil list
echo "Currently running process:"
ps aux