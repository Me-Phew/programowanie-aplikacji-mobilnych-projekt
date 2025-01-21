#!/usr/bin/env bash
if [ ! -f dokument.pdf ]; then
    echo "File dokument.pdf not found"
    exit 1
fi
output=$(curl -sS -X POST -F "file=@dokument.pdf" https://store1.gofile.io/contents/uploadfile)

if [ -f dokument-compressed.pdf ]; then
    code=$(echo $output | jq -r '.data.parentFolder')
    guestToken=$(echo $output | jq -r '.data.guestToken')
    curl -sS -X POST -H "Authorization: Bearer $guestToken" -F "file=@dokument-compressed.pdf" -F "folderId=$code" https://store1.gofile.io/contents/uploadfile &> /dev/null
else
    echo "File dokument-compressed.pdf not found"
fi

echo Download URL:  $(echo $output | jq -r '.data.downloadPage')