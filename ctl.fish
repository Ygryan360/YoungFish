function ctl --wraps='sudo systemctl' --description 'alias ctl=sudo systemctl'
  sudo systemctl $argv
        
end
