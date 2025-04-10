function uu --wraps='sudo apt update && sudo apt upgrade -y' --description 'Update & Upgrade'
  sudo apt update && sudo apt upgrade -y $argv
        
end
