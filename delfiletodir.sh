read -p "Укажите путь к директории: " TARGET_DIR

if [ -d "$TARGET_DIR" ]; then
    echo "Директория обнаружена"
    cd "$TARGET_DIR" || { echo "Не удалось перейти в директорию"; exit 1; }
    
    echo "Процесс удаления файлов начат"
    rm -v *.bak *.tmp *.backup
    echo "Файлы успешно удалены"
else
    echo "Указанная директория не существует"
    exit 1
fi
