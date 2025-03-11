function aserve --wraps='php artisan serve' --description 'alias aserve=php artisan serve'
  php artisan serve $argv
        
end
