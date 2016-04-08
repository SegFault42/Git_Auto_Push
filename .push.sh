#!/zsh/sh


# Ce script a pour but de vous rendre plus simple la tache recurente du push sur git.

# Utilisation :

# 1er cas d'utilisation :
# Placer le script dans votre dossier de travaille (le repertoire ou se trouve le dossier .git).
# Executer le script (sh push.sh)

# 2eme cas d'utilisation (si vous utiliser zsh et que vous voulez lancer le script par une commande depuis n'importe quelle dossier):
# Placer le script dans votre home directory (~/)
# Editer votre fichier .zshrc qui ce trouve dans votre home directory et ajouter la ligne suivante a la fin du fichier :
# alias push="sh ~/.push.sh"


if [ -d "./.git" ];then
clear
echo "\033[32m  ____ _ _     _         _        ____            _  __     ___   ___   ___\033[0m"
echo "\033[32m / ___(_) |_  / \  _   _| |_ ___ |  _ \ _   _ ___| |_\ \   / / | / _ \ / _ \ \033[0m"
echo "\033[32m| |  _| | __|/ _ \| | | | __/ _ \| |_) | | | / __| '_ \ \ / /| || | | | | | |\033[0m"
echo "\033[32m| |_| | | |_| ___ \ |_| | || (_) |  __/| |_| \__ \ | | \ V / | || |_| | |_| |\033[0m"
echo "\033[32m \____|_|\__|_/   \_\__,_|\__\___/|_|    \__,_|___/_| |_|\_/  |_(_)___/ \___/\033[0m"

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
else
echo "\033[31mVeuillez executer le script depuis un dossier git\033[0m"
fi



