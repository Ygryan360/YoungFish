function rmv --wraps='sudo dnf remove' --description 'alias rmv=sudo dnf remove'
    sudo dnf remove $argv

end
