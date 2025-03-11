function srv-status --description 'Statut des services MongoDB, Apache & Mysql'
switch $argv[1]
    case 1
        echo "📃 Statut de MongoDB"
        systemctl status mongod | grep -E 'Loaded:|Active:'
    case 2
        echo "📃 Statut de MySQL"
        systemctl status mysql | grep -E 'Loaded:|Active:'
        echo "📃 Statut d'Apache"
        systemctl status apache2 | grep -E 'Loaded:|Active:'
    case '*'
        echo "📃 Statut de MongoDB"
        systemctl status mongod | grep -E 'Loaded:|Active:'
        echo "📃 Statut d'Apache"
        systemctl status apache2 | grep -E 'Loaded:|Active:'
        echo "📃 Statut de MySQL"
        systemctl status mysql | grep -E 'Loaded:|Active:'
    end
end
