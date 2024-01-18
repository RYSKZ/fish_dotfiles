function ntfy
    command curl "ntfy.sh/$NTFY_CHANNEL" -d $argv
end
