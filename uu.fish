function uu --wraps='sudo apt update' --description 'Update & Upgrade with apt'
  sudo apt update -y $argv
        
end
