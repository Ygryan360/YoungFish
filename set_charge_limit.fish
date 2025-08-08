function set_charge_limit
    echo "Choisis une limite de charge pour ta batterie :"
    echo "1) 60%"
    echo "2) 80%"
    echo "3) 100%"
    read -l choix

    switch $choix
        case 1
            set seuil 60
        case 2
            set seuil 80
        case 3
            set seuil 100
        case '*'
            echo "Choix invalide."
            return 1
    end

    sudo tlp setcharge 0 $seuil
    echo "✅ Limite de charge définie à $seuil%"
end
