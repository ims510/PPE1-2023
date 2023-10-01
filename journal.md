# Journal de Ioana-Madalina Silai
## Séance du 20 septembre

### Points principaux du cours:
* La philosophie derrière UNIX est que tout est fichier.
* Pour naviguer le système de fichiers il y a une syntaxe specifique, basée surtout sur / (/, ~/, ./,../)
* Il y a 2 façons d'indiquer le chemin: le chemin absolut qui part de la racine, ou le chemin relatif qui dépend de l'endroit où on se trouve.
* La syntaxe d'une commande est: nom [-options…] [arguments…]
* Il y a plusieurs commandes, la plus utile est man suivie par une autre commande, qui nous montre comment utiliser la commande qui est l'argument.

### Points difficiles du cours:

* Utiliser git - je ne suis pas sure que je comprends comment faire ça.
* Je dois apprendre plus sur comment collaborer avec les autres sur github, parce que ce n'est pas tres évident pour moi.

## Séance du 27 septembre

### Points principaux du cours:
* On a besoin de communiquer entre nos ordinateurs et GitHub d’une manière sécurisée. On utilise donc une clé de sécurité pour faire tout ça( cryptographie asymétrique, aussi appelée Cryptographie à Clé Publique)
* J'ai reussi à faire communiquer mon ordinateur et les fichiers sur le github du cours (pas mon github!). 
### Points difficiles du cours:
* Quand j'ai essayé de récuperer mon dépôt depuis GitHub j'ai reçu l'erreur suivante:
* <img width="375" alt="image" src="https://github.com/ims510/PPE1-2023/assets/113267498/5015fdda-32ad-4101-bf7b-36a4d304d4e2">
* J'ai donc cherché une solution sur internet et j'ai essayé la commande: `ssh-add ~/.ssh/id_ed25519_ppe2324` et après la commande git clone a functionné. 
