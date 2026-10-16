\name{vc_n}
\alias{vc_n}
\alias{hosmer_lemeshow}
\alias{residus_groupes}
\alias{knn_moy}
\encoding{UTF-8}
\title{Fonctions utilitaires du livre}
\description{
\code{vc_n} calcule le critère de validation croisée par exclusion d'une
observation sans réajuster le modèle (formule exacte pour \code{lm},
approximation pour un GLM à lien canonique).
\code{hosmer_lemeshow} calcule le test de Hosmer-Lemeshow d'une régression
logistique ajustée à des données individuelles.
\code{residus_groupes} donne les résidus groupés (\emph{binned residuals})
d'une régression logistique.
\code{knn_moy} calcule l'estimateur des \eqn{k} plus proches voisins en un point,
ex æquo compris.
}
\usage{
vc_n(modele)
hosmer_lemeshow(modele, G = 10)
residus_groupes(modele, G = 20)
knn_moy(x, X, Y, k)
}
\arguments{
  \item{modele}{un modèle ajusté avec \code{lm} ou \code{glm}.}
  \item{G}{nombre de groupes, formés selon les probabilités prédites.}
  \item{x}{point où estimer la fonction.}
  \item{X, Y}{variable explicative et réponse observées.}
  \item{k}{nombre de voisins.}
}
\value{
\code{vc_n} et \code{knn_moy} : un nombre.
\code{hosmer_lemeshow} : un tableau avec la statistique \code{C}, ses degrés
de liberté et la valeur-p.
\code{residus_groupes} : un tableau d'une ligne par groupe.
}
\examples{
m <- glm(survecu ~ classe + sexe + groupe_age, family = binomial,
         data = empress_individus)
vc_n(m)
}
