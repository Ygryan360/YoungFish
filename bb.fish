function bb --description 'Setup BrainBounty development environment'
  cd ~/lab/BrainBounty/
  code .
  brave-browser http://localhost:8000
  composer run dev
end
