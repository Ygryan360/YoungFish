function uu --wraps='sudo apt update' --description 'Update and upgrade with apt'
    sudo apt update $argv
    and sudo apt upgrade -y
end
