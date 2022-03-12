#!/bin/bash

# установка основных программ 
echo '____ Начальный конфигуратор Archlinux ____'
echo 'Установка/настройка основных программ'
echo 'Выберите желаемое действие:'
echo '1. Установка wm(sway) с необходимым софтом'
echo '2. Установка кодеков'
echo '3. Установка base-devel'
echo '4. Установка драйверов/доп п.о. (AUR/ZST)'
echo '5. Установка dot файлов'
echo '6. Настройка системы'
echo '0. Выход'

# обработка ввода
read -n 1 -p '#: ' ans
echo ''
# проверка 0
if [ ${ans} -eq 0 ]; then exit; fi

# выбор пунктов меню
case "$ans" in
1) ./sys_wm.sh;;
2) ./media_prog.sh;;
3) ./dev_prog.sh;;
4) ./sys_aur.sh;;
5) ./dot/install.sh;;
6) ./else_conf.sh;;
esac

echo "Что-то ещё?"
select answer in "yes" "no"; do
    answer=${answer,,}
    if [[ $answer == 'yes' ]]; then
        echo "Выберите пункт меню"
        sh main.sh
    elif [[ $answer == 'no' ]]; then
        echo "Выход."
    fi
    case "$REPLY" in
        [1-2]) break ;;
        *) echo "Wrong choice. Please, try again." ;;
    esac
done

# удаление лишних пакетов, чистка кеша pacman
#sudo pacman -Rsnc $(pacman -Qdtq)
#sudo pacman -Scc
