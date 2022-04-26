reverse=false
while getopts 'r' OPTION; do
    case $OPTION in
        r)
            reverse=true
            ;;
        *)
            echo "Usage: lfe.sh [-r]"
            exit 1
            ;;
    esac
done

find . -type f | 
tr '[:upper:]' '[:lower:]' | 
grep -E ".*\.[a-zA-Z0-9]*$" | 
sed -e 's/.*\(\.[a-zA-Z0-9]*\)$/\1/' | 
sort | 
uniq -c | 
if "$reverse" = true ; then
    sort -nr
else
    sort -n
fi
