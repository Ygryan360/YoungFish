function rmv --wraps='sudo apt remove' --description 'alias rmv=sudo apt remove'
    sudo apt autoremove --purge $argv

end
