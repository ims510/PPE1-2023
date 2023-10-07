# Journal de Ioana-Madalina Silai
## 1. Séance du 20 septembre 

### Points principaux du cours:
* La philosophie derrière UNIX est que tout est fichier.
* Pour naviguer le système de fichiers il y a une syntaxe specifique, basée surtout sur / (/, ~/, ./,../)
* Il y a 2 façons d'indiquer le chemin: le chemin absolut qui part de la racine, ou le chemin relatif qui dépend de l'endroit où on se trouve.
* La syntaxe d'une commande est: nom [-options…] [arguments…]
* Il y a plusieurs commandes, la plus utile est man suivie par une autre commande, qui nous montre comment utiliser la commande qui est l'argument.

### Points difficiles du cours:

* Utiliser git - je ne suis pas sure que je comprends comment faire ça.
* Je dois apprendre plus sur comment collaborer avec les autres sur github, parce que ce n'est pas tres évident pour moi.

## 2. Séance du 27 septembre

### Points principaux du cours:
* On a besoin de communiquer entre nos ordinateurs et GitHub d’une manière sécurisée. On utilise donc une clé de sécurité pour faire tout ça( cryptographie asymétrique, aussi appelée Cryptographie à Clé Publique)
* J'ai reussi à faire communiquer mon ordinateur et les fichiers sur le github du cours (pas mon github!). 
### Points difficiles du cours:
* Quand j'ai essayé de récuperer mon dépôt depuis GitHub j'ai reçu l'erreur suivante:
* <img width="375" alt="image" src="https://github.com/ims510/PPE1-2023/assets/113267498/5015fdda-32ad-4101-bf7b-36a4d304d4e2">
* J'ai donc cherché une solution sur internet et j'ai essayé la commande: `ssh-add ~/.ssh/id_ed25519_ppe2324` et après la commande git clone a functionné. 
### Les exercices
* J'ai écrit sur le site ce que j'ai fait pour reussir à utiliser la commande `git clone`.
* Ensuite, j'ai utilisé la commande `git log` pour voir la liste des changements que j'avais faits, mais la plus récente n'était pas sur la liste.
* J'ai donc utilisé la commande `git pull` pour synchroniser ce qu'il y avait sur le site et sur mon ordinateur. J'ai verifié que tout c'est bien passé en utilisant la commande `git status` et j'ai reçu le message que la branche était à jour.

## 3. Seance du 4 octobre

## Les exercices
- Pendant le cours j'avais malcompris les exercices, car je n'avais pas fait des changements dans la version en ligne. J'avais changé juste la version locale du journal.md. 
- Je voulais donc supprimer tous les changements pour que je puisse recommencer les exercices. J'ai utilisé la commande `git restore --staged journal.md` car c'était l'instruction que j'ai vue qand j'ai fait `git status`. Après j'ai fait `git restore journal.md` pour supprimer tous les changements.
- Maintenant la version locale du document est revenue à la version initiale, mais la version en ligne n'est pas synchronisée. Donc j'ai fait `git push` mais j'ai obtenu un erreur donc j'ai utilisé `git push --force` pour supprimer les changements précedents sans ajouter dans la version locale ce qu'il y avait dans la version en ligne.
### Execice 1a
- Ensuite j'ai recommencé les exercices et j'ai suivi les instruction pour 1a.
### Execice 1b
- Après, pour 1b j'ai utilisé `git log` pour obtenir SHA. J'ai essaye de faire `git push` mais il y avait un erreur, donc je ne pouvais pas utiliser `git revert`. J'ai utilisé `git reset`.
- J'ai eu des difficultés avec cette commande et j'ai fait des recherche pour apprendre que lorsqu'on utilise `git reset` la SHA qu'on ajoute après c'est la SHA du commit auquel on veut retourner. Quand on utilise `git revert` on supprime le commit qui a la SHA respective. 
- Après `git reset` j'ai fait `git status` qui m'a confirmé que le commit était suprimé. Cependant, quand j'ai ouvert le fichier text la ligne que je voulais supprimer était encore là. 
- Pour supprimer cette ligne j'ai fait `git restore journal.md` et après j'ai fait `git pull` pour synchroniser avec la version en ligne.
### Execice 1c
- J'ai utilisé la commande `git tag -a -m "version initiale seance 3" git-seance3-init`
- Ensuite j'ai fait `git push --tags`.

### Execice 2
- J'ai crée un nouveau document en utilisant `touch oups.md` et j'ai utilisé `code oups.md` pour ecrire mes notes en VSCode pour la séance 3 jusqu'ici. 

### Execice 2a
- J'ai utilisé la commande `git reset` et le code SSH du commit avec le tag git-seance3-init.

### Execice 2b
- J'ai copié-collé les notes que j'avais écris dans oups.md. Ensuite j'ai utilisé `rm oups.md` pour supprimer le document Après j'ai utilisé `git add`, `git commit` et `git push`.

### Execice 2c
- J'ai crée un nouveau tag git-seance3 avec la commande `git tag -a -m "seance 3, version finale des exercices de git" "git-seance3"` et j'ai fait `git push --tags`.

## Points difficiles
- Après cela j'ai fait `git status` et j'ai reçu le message que mes branches ont divergé. J'ai donc fait `git log` et `git log origin/main` pour voir la difference et je me suis rendu compte qu'il y avait un commit en ligne qui n'existait pas sur ma machine - le commit que j'avais fait apres avoir créé le document oups.md. 
- J'ai donc fait `git push --force` de nouveau pour maintenir la version locale comme la version synchronisée. 
