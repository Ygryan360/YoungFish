function cln --wraps='sudo dnf clean' --description 'alias de sudo dnf clean'
  sudo dnf clean all $argv
        
end
