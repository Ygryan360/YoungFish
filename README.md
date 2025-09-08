# Young Fish

Collection de fonctions et d'alias pour le shell fish

Ce dépôt contient un ensemble de fonctions et d'alias pensés pour rendre l'utilisation
du shell fish plus rapide et agréable. Les fonctions couvrent des tâches courantes
comme la gestion de paquets, des raccourcis pour la navigation, et des helpers
pour automatiser des opérations répétitives.

## Remarque importante — branches séparées

Les définitions de fonctions relatives à la gestion des paquets sont maintenues sur
deux branches séparées :

- `dnf` : fonctions orientées pour les distributions utilisant DNF (Fedora, RHEL récent, etc.)
- `apt` : fonctions orientées pour les distributions utilisant APT (Debian, Ubuntu, etc.)

Ces branches sont séparées parce que les commandes et les options des gestionnaires
de paquets diffèrent et ne peuvent pas coexister proprement dans la même branche.

Si vous utilisez ce dépôt localement, choisissez la branche adaptée à votre système.

## Installation

1. Cloner le dépôt (ou copier les fichiers) dans votre dossier de configuration fish :

```bash
# depuis votre dossier home
git clone https://github.com/Ygryan360/YoungFish.git ~/.config/fish/functions
cd ~/.config/fish/functions

# choisir la branche correspondant à votre système
git checkout dnf    # ou git checkout apt
```

2. Recharger la configuration fish ou ouvrir un nouveau terminal :

```bash
source ~/.config/fish/config.fish  # si vous avez des modifications ici
# ou simplement démarrer un nouveau shell fish
fish
```

Note : adaptez la méthode de copie selon vos préférences (copie, liens symboliques, gestionnaire de dotfiles, etc.).

## Vérifier les fonctions disponibles

Pour lister les fonctions installées :

```bash
ls -1 ~/.config/fish/functions
functions  # affiche les fonctions déjà chargées dans le shell
```

Pour afficher le code d'une fonction :

```bash
functions --details nom_de_la_fonction
type -a nom_de_la_fonction
```

## Exemples d'utilisation

- Mettre à jour le système (exemple, identique pour les deux branches) :
  - `uu`
- Installer un paquet :
  - `ins <nom_du_paquet>`

## Dépannage

- Si une fonction ne semble pas prendre effet, ouvrez un nouveau shell fish ou exécutez `functions -c nom_de_fonction` pour la recharger.
- Vérifiez les permissions des fichiers (`chmod +x` n'est généralement pas nécessaire pour les fichiers de fonction fish).

## Contribuer

Contributions bienvenues :

- Proposez les améliorations via des branches et des pull requests.
- Lors de l'ajout de fonctions liées à la gestion de paquets, créez une PR ciblant `dnf` ou `apt` selon le gestionnaire.

## Licence

Le projet est distribué sous la licence MIT. Voir le fichier `LICENSE` pour le texte complet.

SPDX-License-Identifier: MIT
