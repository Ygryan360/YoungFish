function rmv --wraps='sudo apt purge --autoremove' --description 'alias de sudo apt purge --autoremove'
  sudo apt purge --autoremove $argv
        
end
