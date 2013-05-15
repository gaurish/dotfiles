# backup with move
bam() {
  for file; do
    mv -v $file{,.bkp}
  done
}

# undo backup move
bum() {
  for file; do
    mv -v "$file" "${file%.bkp}"
  done
}

# backup with copy
bac() {
  for file; do
    cp -Rpv "$file" "$file~$(date -Ins)~"
  done
}

# undo backup copy
buc() {
  for file; do
    dest=${file%%\~*}
    test -d "$dest" && mv -v "$dest" "$file.orig"
    mv -v "$file" "$dest"
  done
}

