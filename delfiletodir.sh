read -p "Путь к дирректории: " DELDIR

if [ -e $DELDIR ]
        then
                echo 'Дирректория найдена'
                cd $DELDIR
                echo 'Удаление'
                rm -v *.bak *.tmp *.backup
                echo 'Удаленно'
        else
                echo 'Дирректория не найдена'
                exit 2
fi
