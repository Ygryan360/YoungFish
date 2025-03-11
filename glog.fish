function glog --wraps='git log --oneline --graph' --description 'alias glog=git log --oneline --graph'
  git log --oneline --graph $argv
        
end
