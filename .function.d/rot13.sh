# Converts the given string into ROT13 format and reverses it.
rot13 () {
    tr "[a-m][n-z][A-M][N-Z]" "[n-z][a-m][N-Z][A-M]"
}

