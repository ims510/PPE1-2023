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

## 4. Seance du 11 octobre

### Les exercices:

#### Trouver les annotations les plus fréquentes pour votre mois de naissance, toutes années confondues (slide 24).

- J'ai créé un nouveau dossier dans mon dossier git, et dedans un fichier text (exo_slide24) pour que je puisse y écrire les resultats obtenus. 
- J'ai copié-collé le texte de l'exercice dans ce fichier. 
- J'ai utilisé la commande `ls ./*/10/* | cat` pour voir tous les fichiers .ann de mon mois de naissance.
- Après j'ai voulu supprimer les autres chiffres du nom de chaque fichier pour que je puisse faire `uniq --count`. 
- J'ai donc fait la commande `ls ./*/10/* | cut -d / -f 2`
- Ensuite j'ai utilisé la commande `uniq --count`. J'ai obtenu le nombre de fichiers de chaque année. Pour que je puisse obtenir le nombre le plus haut j'ai ordonné la liste, et j'ai utilisé head pour obtenir le nombre le plus haut. La commande à ce moment était `ls ./*/10/* | cut -d / -f 2 | uniq --count | sort -rn | head n1`
- Avant d'ajouter les resultats dans le fichier text j'ai voulu ajouter une phrase d'introduction, donc j'ai fait la commande 
```
echo "Le plus grand nombre d'annotations et l'annee qui les contient est: " >> /Users/madalina/Documents/M1TAL/PPE/PPE1-2023/Exercices/seance4/exo_slide24.txt
```
- Pour écrire le resultat dans le fichier text j'ai donc utilisé la commande: 
```
ls ./*/10/* | cut -d / -f 2 | uniq --count | sort -rn | head -n 1 >> /Users/madalina/Documents/M1TAL/PPE/PPE1-2023/Exercices/seance4/exo_slide24.txt
```

#### Ecrire un script qui donne le nombre de Location par année (slide 26)
- J'ai créé un fichier exo_slide26.sh où j'aurai mon script bash.
- Je suis revenue dans mon terminal pour être sure d'avoir la bonne commande pour chaque année: 
```
cat ./2016/*/* | grep Location | wc -l
```
- Ensuite dans le fichier exo_slide26.sh j'ai ajouté au debut du fichier `#!/usr/bin/bash`, l'exercice, et les commandes.
- J'ai donné au premier argument la variable pour le chemin des fichiers ann. Ensuite j'ai copié-collé les commandes que j'avais testé dans mon terminal. 
- Quand j'ai essayé la commande `bash exo_slide26.sh ~/Documents/M1TAL/PPE/Cours/Fichiers/ann` j'ai obtenu les 3 numeros (le nombre de repetitions de location pour chaque année).
- J'ai voulu ensuite essayer d'executer le script en utilisant la commande `./exo_slide26.sh ~/Documents/M1TAL/PPE/Cours/Fichiers/ann`. J'ai reçu une erreur car j'avais pas fait le fichier executable.
- J'ai donc executé la commande `chmod +x exo_slide26.sh` et j'ai reessayé d'executer le script.
- J'ai reçu une autre erreur: `zsh: ./exo_slide26.sh: bad interpreter: /usr/bin/bash: no such file or directory`
- J'ai cherché sur internet une solution et j'ai trouvé qu'il faut executer `which bash`. J'ai reçu la réponse `/bin/bash`. J'ai donc changé le debut du fichier en `#!/bin/bash` ce qui a résolu le problème. 
- Ensuite j'ai voulu un meilleur aspect pour le resultat, donc j'ai ajouté 3 commandes `echo "Le nombre de répétitions du mot 'Location' en 2016 est: "` - une pour chaque année. 
- En executant le script, j'ai vu que la reponse etait sur la ligne suivante apres le texte d'echo, donc j'ai fait man echo pour voire s'il y a une façon de ne pas avoir ça. J'ai changé donc la commande en ajoutant -n après echo. 

#### Exercice 1a - slide 29
- Comme j'ai fait avant, j'ai testé la commande dans le terminal avant de l'écrire dans le fichier exo1a_slide29.sh
- J'ai ajouté un deuxième argument pour le chemin du fichier.
- J'ai fait le fichier executable en utilisant la commande `chmod +x exo1a_slide29.sh`

#### Exercice 1b - slide 29
- J'ai copié-collé la commande du terminal dans le fichier exo1b_slide29.sh la commande que j'avais utilisé pour lancer le script precedent. 
- Je me suis rendue compte que j'avais besoin d'un autre argument dans le script precedent pour l'année que je pourrais utiliser dans ce script. Je suis donc revenue dans le script precedent et j'ai ajouté la variable YEAR. 
- Je voulais ajouter un peu de texte avant les resultats de la commande et j'ai cherché si on peut utiliser les variable quand on fait echo.

#### Exercice 2 - slide 29
- J'ai construit la commande dans le terminal, même si je sais qu'on a fait cette commande pendant le cours. Je voulais m'assurer que je peux la faire moi-même. 
- Je l'ai copié-collé dans le fichier texte, et j'ai remplacé les parties qu'on veut avoir en argument avec les noms de variables que j'ai ensuite créées. 
- J'ai fait le fichier executable et j'ai testé le fichier. 

Points difficiles:
- J'ai trouvé assez difficile le passage de la théorie dans les slides à la pratique en faisant les exercices.
- J'ai pris un peu de temps pour comprendre qu'il fallait une autre variable pour le chemin vers le fichiers qu'on a utilisés dans les problemes. 