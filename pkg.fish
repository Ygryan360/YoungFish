function pkg --wraps='sudo dpkg -i' --description 'alias pkg=sudo dpkg -i'
  sudo dpkg -i $argv
        
end
