function srv-stop --description 'Arreter les services MongoDB, Apache & Mysql'
    switch $argv[1]
        case 1
            echo "⏳ Arrêt de MongoDB..."
            sudo systemctl stop mongod
            echo "📌 État de MongoDB :"
            systemctl status mongod | grep -E 'Loaded:|Active:'
        case 2
            echo "⏳ Arrêt d'Apache et MySQL..."
            sudo systemctl stop httpd
            sudo systemctl stop mysqld
            echo "📌 État d'Apache :"
            systemctl status httpd | grep -E 'Loaded:|Active:'
            echo "📌 État de MySQL :"
            systemctl status mysqld | grep -E 'Loaded:|Active:'
        case '*'
            echo "⏳ Arrêt de tous les services (MySQL, Apache, MongoDB)..."
            sudo systemctl stop mysqld
            sudo systemctl stop httpd
            sudo systemctl stop mongod
            echo "📌 État de MongoDB :"
            systemctl status mongod | grep -E 'Loaded:|Active:'
            echo "📌 État d'Apache :"
            systemctl status httpd | grep -E 'Loaded:|Active:'
            echo "📌 État de MySQL :"
            systemctl status mysqld | grep -E 'Loaded:|Active:'
    end
end
