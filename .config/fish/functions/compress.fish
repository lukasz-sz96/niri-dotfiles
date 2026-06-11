function compress
    if test (count $argv) -ne 1
        echo "usage: compress <file-or-directory>"
        return 1
    end

    set target (string replace -r '/$' "" -- $argv[1])
    tar czf "$target.tar.gz" -- "$target"
end
