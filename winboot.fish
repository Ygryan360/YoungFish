function winboot --wraps=winboot --description 'reboot system to Windows'
    set -l entry "Windows Boot Manager (on /dev/sda4)"
    echo "Préparation du redémarrage unique sur Windows..."
    sudo grub-reboot "$entry"
    sudo reboot
end