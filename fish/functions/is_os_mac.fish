function is_os_mac
    set -l os (uname)

    if test "$os" = "Darwin"
        return 0
    else
        return 1
    end
end
