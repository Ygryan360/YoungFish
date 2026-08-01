function cdev --wraps='comp run dev:light' --description 'Php & Bun'
    concurrently -c "#93c5fd,#c4b5fd" "php artisan serve" "bun run dev" --names=php,bun --kill-others $argv
end
