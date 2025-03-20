function aserve --wraps='php artisan serve' --description 'alias aserve=php artisan serve'
    srv-start 2 
    php artisan serve $argv

end
