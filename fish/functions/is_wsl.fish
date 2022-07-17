function is_wsl
    set -l arch (uname -r)

    if string match -q "*WSL*" "$arch"
        return 0
    else
        return 1
    end
end
