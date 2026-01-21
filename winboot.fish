function winboot --wraps=winboot --description 'reboot system to Windows'
    grub2-reboot "Windows Boot Manager (on /dev/sda4)"
    reboot
end
