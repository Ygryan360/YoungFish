function src --wraps='apt-cache search' --description 'alias src=apt-cache search'
  apt-cache search $argv
        
end
