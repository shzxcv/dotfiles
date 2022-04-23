function is_mac_intel
    set -l arch (uname -m)

    if test "$arch" = "x86_64"
        return 0
    else
        return 1
    end
end
