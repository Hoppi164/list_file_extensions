is_ascending=true
while getopts 'ad' OPTION; do
    case $OPTION in
        a)
            is_ascending=true
            ;;
        d)
            is_ascending=false
            ;;
        *)
            echo "Usage: lfe.sh [-a|-d]"
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
if "$is_ascending" = true ; then
    sort -n
else
    sort -nr
fi
