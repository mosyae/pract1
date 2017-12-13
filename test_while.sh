while read -r; do
    printf "%s\n" "$REPLAY"
done < "$1"