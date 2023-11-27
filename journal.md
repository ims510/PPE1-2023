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

## 5. Séance du 18 octobre

Pendant le cours j'ai essayé les boucles `for` et la validation avec `if` dans des petits script que j'ai sauvegardé dans un fichier pour seance 5. Cela m'a aidé quand j'ai repris les slides et mes notes avant de faire les exercices pour le devoir. 

Pour le devoir j'ai repris les exercices de la dernière séance et j'ai ajouté ce qu'on a appris pendant la séance 5. J'ai eu quelques erreurs au début car j'avais oublié que la syntaxe est très stricte avec les espaces, et donc je n'avais pas laissé des espaces après les [ ] dans mes if. 

### Exercices

#### Ecrire un script qui donne le nombre de Location par année (exo_slide26_for.sh)
- Au début j'avais juste ajouté la boucle for pour optimiser le script.
- A la place d'avoir la meme commande 3 fois, avec juste l'année qui était differente, j'ai pensé que ce serait mieux s'il y avait une boucle `for` où la variable prend la valeur de l'année, et donc peut être inclue dans le résultat affiché
- J'ai decidé ensuite d'ajouter un `if` pour verifier que l'argument donné par l'utilisateur (le chemin vers les fichiers) est valide.

#### Ecrire un script qui compte les entités pour une année, un type d'entité donné en argument (exo1a_slide29_validation.sh)
- Comme j'ai plusieurs arguments donnés par l'utilisateur (le type d'entité, l'année et le chemin vers les fichiers concernés) je devais avoir plusieurs conditions de validation. 
- J'ai decidé donc d'ajouter une variable (OK) qui augmente par 1 chaque fois qu'une condition est remplie. Si OK est egal à 3 ça veut dire que les 3 conditions sont biens remplies, donc on peut executer le script. 
- J'ai decidé d'utiliser cette variable pour eviter d'avoir toutes les conditions dans un seul `if`, car ce serait impossible d'avoir des messages d'erreurs utiles, qui nous donne un indice de ce qui ne marche pas. 
- Je voulais aussi eviter un `if` dans un autre, car j'avais peur de me tromper avec la syntaxe et l'indentation.
- C'est dans cet exercice où j'ai fait des erreurs avec les espaces, mais que j'ai réussi à résoudre. 

#### Lancer le script precedent 3 fois, une fois par chaque année (exo1b_slide29_foretvalidation.sh)
- C'est dans cet exercice que je me suis rendue compte qu'il fallait faire une boucle `for` sous un `if` et après avoir bien réusssi à faire ça j'ai modifié l'exercice qui donne le nombre de locations par année (exo_slide26_for.sh)
- J'avais presque oublié de changer le nom du script lansé 3 fois, ou de mettre le bon chemin si je voulais maintenir le lien avec le script de la semaine derniere. 

#### Le classement des lieux les plus cités, prendre en argument l'année, le mois et le nombre de lieux (exo2_slide29_validation.sh)
- Quand j'ai essayé d'écrire l'expression regulière pour accepter les * comme argument, je me suis rendue compte que je ne savais pas comment faire pour ne pas considerer * comme caractère special dans la regex. 
- J'ai donc cherché une solution sur internet et j'ai trouvé qu'il faut juste utiliser `\*` pour que l'ordinateur reconnaisse * comme le caractere-meme et pas comme un symbole pour signifier 0 ou plusieurs repetitions. 
- Après, j'avais oublié la leçon apprise la derniere fois quand j'ai testé ce script et j'ai mis * comme argument et pas "*". J'ai donc passé un peu de temps essayant de me rendre compte quel était le problème avec mon script, alors que le problème était avec l'argument tapé au clavier.


### Notes du projet - 1

- Je suis dans une groupe avec Kehina Manseri et Elisa Lepluvier et nous avons eu une discussion il y a 2 semaines sur le mot et les langues qu'on allait choisir. 
- On a decidé de choisir le mot "guerre" en anglais, en roumain et en russe et on allait se focaliser sur les articles sur la guerre entre la Russie et l'Ukraine. 
- On a choisi ce mot parce que nous étions curieuses sur le genre de mots qu'on utilise en Russie versus les médias européens quand on décrit la guerre. 
- Pour moi ces recherches en roumain sont encores plus interessantes, car la Roumanie est dans l'UE et l'OTAN, mais aussi très affecté par les médias russes. Je voulais donc voir dans quelle mésure les medias roumains s'approchent à la vision de l'ouest en ce qui concerne la guerre.
- À cause de la guerre entre Israel et Gaza, je me demande si on devrait changer un peu de focus et comparer peut-être comment les 2 guerres sont representés dans les médias. Nous allons en discuter avant les vacances.
- Pour l'instant on a commancé a faire une liste de liens, et j'en ai trouvé 30. On va essayer d'avoir 100 liens par langue jusqu'à la fin des vacances. 


## 6. Séance du 25 octobre

- Pendant le cours j'ai réussi à transformer le chemin urls/fr.txt en parametre du script et à écrire les conditions pour s'assurer que le script s'arrete si on ne lui donne pas un argument. 
- Pour travailler sur chaque URL, il faut utiliser une boucle. Pour rendre le programme plus flexible, et donc pour qu'il marche même si on ajoute des URL dans ce fichier, j'ai decidé d'utiliser une boucle while.
- J'ai aussi réussi à écrire un nombre devant chaque URL, en ajoutant une variable dans la boucle, qui augmente par 1 avec chaque URL. J'ai ensuite utilisé `echo` pour imprimer cette variable à chaque itération. 
- Pour obtenir le code HTTP de réponse à la requête la premiere question que je me suis posée était comment stocker le resultat d'un comande `grep` dans une variable, que je pourrais ensuite utiliser dans ma commande `echo`. Après beaucoup d'essais avec les differents options de la commande `curl` - une commande qui nous permet de récuperer des informations sur les pages web, j'ai trouvé la combinaison dont j'avais besoin pour obtenir les headers.
- J'ai donc utilisé `curl` suivi premierement par `-s` pour ne pas obtenir des messages d'erreur ou la bare de progres. Comme je savais que j'allais mettre le resultat de la commande `curl` dans une variable, c'était important de pouvoir me focaliser sur les resultats relevants. 
- Ensuite j'ai ajouté l'option `-I` pour obtenir seulement le header, qui contient les informations dont j'ai besoin: l'encodage et le code HTTP.
- En faisant cela, suivi par la comande `grep` pour isoler le code HTTP, j'ai du ajouter une expression reguliere pour obtenir que le code. En ajoutant ce resultat dans une variable, j'ai vu qu'il y avait des codes differents.
- Le seul qui était reparable etait le code 301, qui signifiat qu'il y avait au moins une redirection vers une autre page web pour remplacer celle obtenue à partir de l'URL.  J'ai donc ajouté l'option `L` après `curl -s -I` pour faire la commande `curl` suivre les redirections jusqu'au site final. 
- Le probleme maintenant c'était le fait que `grep` me montrait les codes de toutes les redirections. Pour garder seulement celle du site final, j'ai ajouté la commande `tail -n 1`
- En discutant avec une collegue je me suis rendue compte que mon expression grep écrite comme `grep "HTTP"` aurait matché avec le mot http dans n'importe quelle circonstance - par exemple http fait partie de l'URL. J'ai donc ajouté `^` avant pour m'assurer qu'il me chercherait cette expression seulement au debut d'une ligne.
- Pour obtenir l'encodage j'ai créé une autre variable et j'ai écrit la regex pour trouver l'encodage. Ça m'a prit beaucoup de temps parce que une regex comme `"charset=.*"` me montrait une ligne vide. Cependant si j'écrivais `"charset=..."` il me trouvait les 3 caracteres apres charset=. Le probleme existait seulement si mon expression reguliere incluait la fin d'une ligne. 
- J'ai mis le resultat de la comande curl dans un editeur hexadecimal et j'ai vu qu'il s'agissait en fait d'un caractere qui envoyait à la prochaine ligne, donc chaque fois que ma recherche obtenait ce caractere le caractere faisait son job et sautait à la prochaine ligne, qui etait une ligne vide. 
- J'ai cherché sur internet des solutions pour ce probleme et j'ai trouvé la commande `tr -d "\r"` pour en fait supprimer le caractere de saute à la prochaine ligne. 
- Après avoir utilisé cette comande je pouvais utiliser le caractere * dans mon expression regulier pour l'encodage. Pour enlever la partie "charset=" et avoir que le nom de l'encodage j'ai utilisé la comande `cut -f 2 -d =` pour maintenir la deuxieme partie apres le delimiteur =.
- Ensuite je me suis rendue compte que je faisais la commande `curl` deux fois - une fois pour obtenir le code http et une autre fois pour l'encodage. J'ai donc créé une variable pour garder le resultat de `curl` que j'ai ensuit mis dans les variables HTTP et ENCODING. 
- Une chose que je n'ai pas comprise c'est pourquoi quand j'ai utilisé la variable CURL apres `echo` dans mes variables HTTP et ENCODING elle ne marchait pas si je ne mettais pas des guillimes autur du nom de la variable. La comande `echo $CURL` ne marchait pas, mais `echo "$CURL"` marchait.


## 7. Séance du 8 novembre

### Notes du cours:

- Pendant le cours on nous a montré une façon differente d'obtenir l'encodage, qui est assez proche de ce que j'avais fait mais il y a aussi des particularités interessants: `curl -s -I -w -L "%{content_type}" -o /dev/null $URL| grep -P -o "charset=\S+" |cut -d"=" -f2` 
- On a aussi appris qu'il y a la possibilité de mettre des valeurs qu’on veut utiliser quelque part, mais qu’on n’a pas besoin de garder, dans une sorte de "fichier poublelle" avec l'option `/dev/null` 

### Notes du miniprojet:

- J'ai réussi à ajouter les codes HTML dans mon script que j'avais fait la semaine derniere, pour que les resultat s'affichent sous la forme d'une page HTML. 
- Au debut j'ai fait l'erreur de ne pas mettre la partie d'introduction `<html>, <head>` etc. mais en relisant les slides je me suis rendue compte de l'erreur. 
- Je voulais bien investiguer plus comment faire le tableau plus beau, car pour l'instant c'est très simple. J'imagine aussi qu'une fois que j'utilise les liens que j'ai trouvé pour notre projet ce sera encore plus difficile à lire sans aucune mise en page

### Notes des exercices:

#### Exercice 1
- J'ai du utiliser la page man pour la commande "tr" pour savoir comment remplacer les majuscules avec des minuscules, et j'ai trouvé ma réponse: `tr "[:upper:]" "[:lower:]"`
- Pour le premier exercice j'ai eu des difficultés avec la decision d'enlever les signes de ponctuation, car je ne savais pas s'il fallait enlever les apostrophes et les tirrets aussi. Au debut j'ai decidé de garder les apostrophes et de prendre des mots comme "j'aime" ou "beau-père" comme un seul mot, mais ensuite je me suis rendue compte que si on separe les mots "j" et "aime" on ne perd pas le sens, mais si on separe "beau" et "père" le sens se perd. J'ai donc decidé de garder les tirrets, et enlever les apostrophes. 
- C'est une question qui sera difficile à aborder quand je ferai ce genre de traitement pour des textes en roumain, ou on utilise des tirrets à la place des apostrophes, donc il n'y a pas une façon facile de decider entre signes ponctuation qui changent le sens ou pas. 


#### Exercice 2

- Pour aborder cet exercice j'ai relu mon script que j'avais fait pour la 5eme semaine quand on a conté les differentes places qui se trouvaient dans les fichiers .ann. Cela m'a beaucoup aidé car j'ai dû juste reutiliser la commande que j'avais utilisé à ce point là. La seule difference est la validation des argument et l'utilisation d'une variable pour la commande `head` pour montrer un certain nombre de resultats. 

#### Exercice 3

- Cet exercice n'etait pas facile, mais ce qui m'a aidé a été d'abord de lire la page man de la commande `paste`. Au debut j'ai utilisé cette comande avec un argument et je ne comprenais pas le but de la commande. En lisant plus attentivement je me suis rendue compte que j'avais besoin de 2 fichiers.
- Pour bien voir comment ça marche j'ai créé 2 fichier text chacun avec 3 lignes et avec un mot sur chaque ligne. Cela m'a permis de voir exactement comment fonctionne la commande et j'ai utilisé l'option `-d " " ` pour qu'il y ait seulement une space entre les lignes qu'on a concatenées. 
- Je me suis donc rendue compte aussi que j'aurais besoin de 2 copies de mon fichier, dont les lignes soient decalées par 1. Comme ça le premier mot du premier fichier serait à côté du deuxieme du deuxieme fichier et ainsi suite. 

|   | Je  |
|---|---|
|Je  |  mange |
|mange|  des|
|des   |  pommes |
|pommes   |   |
|   |   |

- Comme on peut voir dans cet exemple, il faut manipuler les fichier pour qu'on puisse les mettre ensemble. Il faut d'abord supprimer la premier ligne d'un des fichiers, et la derniere ligne de l'autre. J'ai fait ça avec la commande `sed '$d'` pour supprimer la derniere ligne d'un des fichiers et `tail -n +2` pour supprimer la premiere ligne de l'autre. 
- Ensuite j'ai juste repris la commande de l'exercice anterieur. 

## 8. Séance du 15 novembre

### Notes du cours:

- Pendant la correction de l'exercice pour le miniprojet j'ai appris qu'en fait on peut ecrire le code html sur plusierus lignes, donc on n'a pas besoin de faire echo plusieurs fois comme je l'avais fait dans ma solution.

### Notes du miniprojet:

- Pour rendre la page html qui contient le tableau un peu plus jolie j'ai utilisé la librarie CSS Bulma, qu'on nous a montrée en cours. C'était pas très facile de me rendre compte exactement ce qu'il faut ajouter dans le script pour que ça marche, particulierement. C'est vrai par contre que le site est très bien documenté, ce qui m'a aidé à trouver les characteristiques que je chercheais pour mon tableau.
- Initiallement j'avais ajouté tout ce dont j'avais besoin dans le script miniprojet.sh, mais ça est devenu tres lourd et difficile à lire. J'ai cherché comment ce type de problème est resolu, et j'ai trouvé une meilleure strategie. J'ai donc créé un nouveau fichier html qui est le template de ma page, dans lequel j'ai mis un commentaire `<!-- Table -->`. Ensuite, j'ai supprimé toutes les commandes echo qui contennaient du code html, car ce code était maintenant dans mon fichier template. J'ai ajouté une commande sed qui remplace le commentaire avec le tableau que j'obtiens quand j'utilise le script. 
- La commande que j'ai utilisé est `sed "s|<!-- Table -->|$TABLE|g" template.html > "$FILE_PATH_OUT"`
- Lorsque je chercheais des instructions pour utiliser sed la commande que j'avais trouvé utilisait des `/`, mais parce que mon code html avait des `/` aussi la commande sed interpretait les slash du code html comme des slash pour la fin de la partie qui doit être remplacé. J'ai donc cherché une solution pour ce problème et j'ai trouvé que si dans une commande on ne peut pas utiliser des slash parce qu'ils existent dans la chaine de cractere qu'on modifie, on peut les remplacer avec des `|`.
- Separer le code html du code bash me permet de ajuster le format de la page html, sans devoir melanger ça avec le fonctionnement du script. 

- Ensuite, pour faire la page d'accueil j'ai remplacé le fichier index.html qu'on a téléchargé en cours par un fichier index.html que j'ai fait, en prennant le code starter template sur Bulma (https://bulma.io/documentation/overview/start/). 
- Pour faire le lien avec le tableau j'ai cherché quelles balises html il faut utiliser et j'ai suivi les instructions que j'ai trouvés en ligne. J'ai donc ajouté `<a href="miniprojet/tableaux/tableau.html"><strong>ici</strong>` pour ajouter le lien au mot "ici". 
- Après avoir tout poussé sur github, le lien https://ims510.github.io/PPE1-2023/ marche bien.
- Ce que je devrais encore passer du temps à faire c'est la partie "jolie" des pages html - je sais qu'en ce moment elles sont très basiques et je voudrais passer plus de temps pour explorer ce qu'on peut faire en utilisant Bulma. 

## 9. Séance du 22 novembre

### Notes du cours:

- J'avais choisi de nommer les nouveaux fichiers texte/html qu'on crée lorsqu'on lance le script du mini projet en utilisant la variable `$N`, que j'avais créé au début pour nummeroter les liens. J'ai appris par contre qu'il y avait une autre manière de résoudre ce problème - en utilisant la commande `basename` 
- Pendant le cours on a réussi à travailler en groupe pour faire les aspirations et les dumps du texte, ainsi que les mettre dans des liens dans le tableau. En travaillant chez nous on a réussi à faire le contexte et on a commencé (mais pas fini) de travailler sur le concordancier. 
