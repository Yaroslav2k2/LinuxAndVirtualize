
owners=$(ls -l | awk '{print $3}' | sort | uniq)

for owner in $owners; do
    mkdir -p "$owner"
done

owner_file_list=$(ls -l | awk '{print $3, $9}')

index=0

for item in $owner_file_list; do
    index=$((index + 1))
    if ((index % 2 != 0)); then
        current_owner="$item"
        echo "Текущий владелец: $current_owner"
    else
        if [ -f "$item" ]; then
            cp "$item" "$current_owner/$item"
            echo "Скопирован файл '$item' в директорию '$current_owner'"
        fi
    fi
done

  
