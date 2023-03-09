#!/bin/bash

# ANSI formatında renk kodlar:

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

clear
echo "#######################################################"
echo "🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥          <-HAZIRLAYAN->    "
echo "🟥🟥⬜⬜⬜🟥🟥🟥🟥🟥🟥			   "
echo "🟥⬜⬜🟥🟥🟥🟥⬜🟥🟥🟥            By-Emirhan"
echo "🟥⬜🟥🟥🟥🟥⬜⬜⬜🟥🟥			   "
echo "🟥⬜⬜🟥🟥🟥🟥⬜🟥🟥🟥      github.com/By-Emirhan "
echo "🟥🟥⬜⬜⬜🟥🟥🟥🟥🟥🟥 youtube.com/@EmirhanDoganlardan"
echo "🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥 TR       Versiyon = 1.0    "
echo "#######################################################"
echo

while true
do
    echo ${RED}[${WHITE}01${RED}] ${WHITE}= ${RED}Tuşları ekle / Add keys
    echo ${RED}[${WHITE}02${RED}] ${WHITE}= ${RED}Tuşları kaldır / Remove keys
    echo ${RED}[${WHITE}03${RED}] ${WHITE}= ${RED}Daha fazla bilgi / More information
    echo ${RED}[${WHITE}04${RED}] ${WHITE}= ${RED}Çıkış / Exit
    echo
    read -p "${ORANGE}Seçim yapınız: " choice

    case "$choice" in
        1)
	    echo
            echo "${GREEN}Termux'a tuşlar ekleniyor..."
            rm -rf ~/.termux/termux.properties
            echo
	    echo "extra-keys = [['ESC','CTRL','-','HOME','UP','END','BKSP'],['TAB','ALT','/','LEFT','DOWN','RIGHT','ENTER']]" > ~/.termux/termux.properties # burada tuş ekleme işlemleri gerçekleştirilir
            termux-reload-settings
	    exit 0
            ;;
        2)
            echo
	    echo "${RED}Tuşlar kaldırılıyor..."
            echo
	    rm -rf ~/.termux/termux.properties
            termux-reload-settings
	    exit 0
            ;;
        3)
            echo
	    echo "Siteye yönlendiriliyorsunuz..."
            echo
	    xdg-open https://by-emirhan.github.io/ # bu komut, kullanıcının varsayılan web tarayıcısını açar ve belirtilen URL'ye yönlendirir.
            ;;
        4)
	    echo
            echo "Program sonlandırılıyor."
            echo
	    exit 0
            ;;
        *)
	    echo
            echo "Hatalı seçim! Lütfen geçerli bir seçim yapın."
            echo
	    ;;
    esac
done
