# ulavalreg

Jeux de données et fonctions utilitaires du livre « Au-delà de la régression linéaire : GLM, régularisation et méthodes non paramétriques » (Julien Miron, Université Laval).

## Installation

```r
# install.packages("remotes")
remotes::install_github("JulienMiron/ulavalreg")
```

## Contenu

Jeux de données :

- `empress_individus` et `empress_agrege` : passagers du naufrage de l'Empress of Ireland (1914), un par ligne ou regroupés par classe, sexe et groupe d'âge ;
- `arbres` : extrait de 200 arbres des placettes-échantillons permanentes de l'inventaire forestier du Québec ;
- `qualite_air` : mesures horaires de 2025 des stations du Réseau de surveillance de la qualité de l'air du Québec (préparées par donneesbleues.ca).

Fonctions :

- `vc_n(modele)` : validation croisée par exclusion d'une observation, sans réajustement ;
- `hosmer_lemeshow(modele, G = 10)` : test de Hosmer-Lemeshow pour une régression logistique sur des données individuelles ;
- `residus_groupes(modele, G = 20)` : résidus groupés d'une régression logistique ;
- `knn_moy(x, X, Y, k)` : estimateur des $k$ plus proches voisins en un point.

## Utilisation

```r
library(ulavalreg)
data(arbres)

# hauteur en fonction du diamètre : deux modèles comparés par LOOCV
m1 <- lm(height_m ~ diameter_cm, data = arbres)
m2 <- lm(height_m ~ log(diameter_cm), data = arbres)
c(lineaire = vc_n(m1), log = vc_n(m2))
```

Les jeux de données sont identiques aux fichiers CSV du livre. Le dossier `data-raw/` contient le script qui les recrée à partir de ces fichiers.
