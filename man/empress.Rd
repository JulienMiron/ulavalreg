\name{empress_individus}
\alias{empress_individus}
\alias{empress_agrege}
\docType{data}
\encoding{UTF-8}
\title{Passagers du naufrage de l'Empress of Ireland (1914)}
\description{
Le 29 mai 1914, le paquebot \emph{Empress of Ireland} a coulé en moins de
15 minutes dans le fleuve Saint-Laurent, près de Rimouski. Sur les 1057
passagers à bord, 217 ont survécu. Les données sont offertes sous deux formes :
une ligne par passager (\code{empress_individus}) ou une ligne par combinaison
de classe, de sexe et de groupe d'âge (\code{empress_agrege}).
}
\usage{
empress_individus
empress_agrege
}
\format{
\code{empress_individus} : 1057 lignes et 5 variables.
\describe{
  \item{\code{classe}}{classe du billet : « Première », « Deuxième » ou « Troisième ».}
  \item{\code{sexe}}{« Homme » ou « Femme ».}
  \item{\code{groupe_age}}{« Adulte » ou « Enfant ».}
  \item{\code{classe_num}}{classe sous forme numérique (1, 2 ou 3).}
  \item{\code{survecu}}{1 si le passager a survécu, 0 sinon.}
}
\code{empress_agrege} : 11 lignes (les combinaisons observées) et 6 variables,
soit \code{classe}, \code{sexe}, \code{groupe_age}, \code{classe_num},
\code{effectif} (nombre de passagers) et \code{survivants} (nombre de survivants).
}
\examples{
glm(cbind(survivants, effectif - survivants) ~ classe_num + sexe + groupe_age,
    family = binomial, data = empress_agrege)
}
\keyword{datasets}
