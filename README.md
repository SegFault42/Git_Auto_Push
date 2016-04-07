# Git-Auto-Push

Ce script a pour but de vous rendre plus simple la tache recurente du push sur git.

Utilisation :

1er cas d'utilisation :

- Placer le script dans votre dossier de travaille (le repertoire ou se trouve le dossier .git).
- Executer le script (sh push.sh)

2eme cas d'utilisation (si vous utiliser zsh et que vous voulez lancer le script par une commande depuis n'importe quelle dossier):

- Placer le script dans votre home directory (~/)
- Editer votre fichier .zshrc qui ce trouve dans votre home directory et ajouter la ligne suivante a la fin du fichier :
 
        alias push="sh ~/.push.sh"
- Faire un source du fichier .zshrc (source .zshrc) 
