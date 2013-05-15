# Find a file with pattern $1 in name and Execute $2 on it:
function fiexec()
{ find . -type f -iname '*'${1:-}'*' -exec ${2:-file} {} \;  ; }

