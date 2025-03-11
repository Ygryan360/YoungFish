function srv-stop --description 'Arreter les services MongoDB, Apache & Mysql'
    switch $argv[1]
        case 1
            echo "⏳ Arrêt de MongoDB..."
            sudo systemctl stop mongod
            echo "📌 État de MongoDB :"
            systemctl status mongod | grep -E 'Loaded:|Active:'
        case 2
            echo "⏳ Arrêt d'Apache et MySQL..."
            sudo systemctl stop apache2
            sudo systemctl stop mysql
            echo "📌 État d'Apache :"
            systemctl status apache2 | grep -E 'Loaded:|Active:'
            echo "📌 État de MySQL :"
            systemctl status mysql | grep -E 'Loaded:|Active:'
        case '*'
            echo "⏳ Arrêt de tous les services (MySQL, Apache, MongoDB)..."
            sudo systemctl stop mysql
            sudo systemctl stop apache2
            sudo systemctl stop mongod
            echo "📌 État de MongoDB :"
            systemctl status mongod | grep -E 'Loaded:|Active:'
            echo "📌 État d'Apache :"
            systemctl status apache2 | grep -E 'Loaded:|Active:'
            echo "📌 État de MySQL :"
            systemctl status mysql | grep -E 'Loaded:|Active:'
    end
end
