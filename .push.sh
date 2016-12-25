#!/zsh/sh


# Ce script a pour but de vous rendre plus simple la tache recurente du push sur git.

# Utilisation :

# 1er cas d'utilisation :
# Placer le script dans votre dossier de travaille (le repertoire ou se trouve le dossier .git).
# Executer le script (sh push.sh)

# 2eme cas d'utilisation (si vous utiliser zsh et que vous voulez lancer le script par une commande depuis n'importe quelle dossier):
# Placer le script dans votre home directory (~/)
# Editer votre fichier .zshrc qui ce trouve dans votre home directory et ajouter la ligne suivante a la fin du fichier :
# alias push="sh ~/push.sh"


if [ -d "./.git" ];then
clear
echo "\033[32m  _____ _ _                 _        _____           _ __      ____   ___ ___  \033[0m"
echo "\033[32m / ____(_) |     /\        | |      |  __ \         | |\ \    / /_ | / _ \__ \ \033[0m"
echo "\033[32m| |  __ _| |_   /  \  _   _| |_ ___ | |__) |   _ ___| |_\ \  / / | || | | | ) | \033[0m"
echo "\033[32m| | |_ | | __| / /\ \| | | | __/ _ \|  ___/ | | / __| '_ \ \/ /  | || | | |/ / \033[0m"
echo "\033[32m| |__| | | |_ / ____ \ |_| | || (_) | |   | |_| \__ \ | | \  /   | || |_| / /_ \033[0m"
echo "\033[32m \_____|_|\__/_/    \_\__,_|\__\___/|_|    \__,_|___/_| |_|\/    |_(_)___/____|\033[0m"

if [ "find ./ -name .DS_Store" ];then
	find ./ -name .DS_Store -delete
fi

if [ "find ./ -name ._.DS_Store" ];then
	find ./ -name ._.DS_Store -delete
fi

if [ $# -ge 1] then;
	for ((i = 0; i <= $1; i++))
	do
		find . -type d -depth $i -exec make -C {} fclean 2>/dev/null \;
	done
else
	if [ "find ./ -name *.o" ];then
		make fclean 2>/dev/null
	fi
fi

echo "\033[41mAppuyer sur Entrée pour git status...\033[0m"
read a
clear
echo "\033[35mgit status\033[0m"
git status
echo "\033[41mAppuyer sur Entrée pour git add...\033[0m"
read a

clear
echo "\033[35mgit add\033[0m"
git add *
echo "\033[35mgit status\033[0m"
git status
echo "\033[41mAppuyer sur Entrée pour git commit...\033[0m"
read a

clear
echo "\033[35mgit commit\033[0m"
echo "commit name :"
read commit
git commit -m "$commit"

echo "\033[41mAppuyer sur Entrée pour git push...\033[0m"
read a
clear
echo "\033[35mgit push\033[0m"
git push
git log
else
echo "\033[31mVeuillez executer le script depuis le repertoire ou ce trouve le dossier .git\033[0m"
fi



