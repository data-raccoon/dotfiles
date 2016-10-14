# ensure utf-8 encoding for text files
iconv -f utf-8 -t utf-8 -c $1 -o $1.utf8ensured
