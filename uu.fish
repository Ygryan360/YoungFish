function uu --wraps='sudo dnf upgrade' --description 'Update and upgrade with dnf'
    sudo dnf upgrade -y $argv
end
