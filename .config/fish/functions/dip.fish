function dip
    if test (count $argv) -lt 2
        echo "usage: dip <remote> <port> [port...]"
        return 1
    end

    set remote $argv[1]
    for port in $argv[2..-1]
        set socket "$XDG_RUNTIME_DIR/ssh-fwd-$remote-$port"
        ssh -S "$socket" -O exit "$remote"
    end
end
