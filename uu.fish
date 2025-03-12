function uu --wraps='sudo dnf update' --description 'Update & Upgrade with dnf'
  sudo dnf update -y $argv
        
end
