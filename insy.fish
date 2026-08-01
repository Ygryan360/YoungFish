function insy --wraps='sudo dnf install -y' --description 'alias insy sudo dnf install -y'
    sudo dnf install -y $argv
end
