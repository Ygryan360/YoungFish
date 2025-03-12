function ins --wraps='sudo dnf install' --description 'alias de sudo dnf install'
  sudo dnf install $argv
        
end
