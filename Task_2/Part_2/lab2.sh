#!/bin/bash

#  Функція для отримання інформації про обсяг зайнятого дискового простору для папок у вказаній директорії.
show_disk_usage() {
    directories="$1"
    echo "Disk usage for $directories:"
    # Отримаємо розмір дискового простору для перших 10 елементів у директорії за допомогою команди 'du' і відсортуємо їх у порядку спадання.
    du -ah "$directories" 2>/dev/null | sort -rh | head -n 10
    echo "****"
}

# Виклик функції для фвох директорій.
# Показ обсягу використаного дискового простору для WinRAR.
show_disk_usage "C:\Program Files\WinRAR"
# Показ обсягу використаного дискового простору для 7-Zip.
show_disk_usage "C:\Program Files\7-Zip"
