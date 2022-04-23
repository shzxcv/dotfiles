function is_mac_m1
    set -l arch (uname -m)

    if test "$arch" = "arm64"
        return 0
    else
        return 1
    end
end
