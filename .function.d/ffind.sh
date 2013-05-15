# Find a file with a pattern in name:
function ffind() { find . -type f -iname '*'$*'*' -ls ; }

