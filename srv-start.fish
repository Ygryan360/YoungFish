function srv-start --description 'Demmarer les services MongoDB, Apache & Mysql'
    switch $argv[1]
        case 1
            echo "🚀 Démarrage de MongoDB..."
            sudo systemctl start mongod
            echo "📌 État de MongoDB :"
            systemctl status mongod | grep -E 'Loaded:|Active:'
        case 2
            echo "🚀 Démarrage d'Apache et MySQL..."
            sudo systemctl start httpd
            sudo systemctl start mysqld
            echo "📌 État d'Apache :"
            systemctl status httpd | grep -E 'Loaded:|Active:'
            echo "📌 État de MySQL :"
            systemctl status mysqld | grep -E 'Loaded:|Active:'
        case '*'
            echo "🚀 Démarrage de tous les services (MySQL, Apache, MongoDB)..."
            sudo systemctl start mysqld
            sudo systemctl start httpd
            sudo systemctl start mongod
            echo "📌 État de MongoDB :"
            systemctl status mongod | grep -E 'Loaded:|Active:'
            echo "📌 État d'Apache :"
            systemctl status httpd | grep -E 'Loaded:|Active:'
            echo "📌 État de MySQL :"
            systemctl status mysqld | grep -E 'Loaded:|Active:'
    end
end
