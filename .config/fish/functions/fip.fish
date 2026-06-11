function fip
    if test (count $argv) -lt 2
        echo "usage: fip <remote> <port> [port...]"
        return 1
    end

    set remote $argv[1]
    for port in $argv[2..-1]
        set socket "$XDG_RUNTIME_DIR/ssh-fwd-$remote-$port"
        ssh -M -S "$socket" -fN -L "$port:localhost:$port" "$remote"
        echo "forwarded localhost:$port -> $remote:localhost:$port"
    end
end
