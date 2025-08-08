function pubip --wraps='curl ifconfig.me' --description 'alias pubip=curl ifconfig.me'
  curl ifconfig.me $argv
        
end
