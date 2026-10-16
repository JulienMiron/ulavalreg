\name{arbres}
\alias{arbres}
\docType{data}
\encoding{UTF-8}
\title{Extrait de 200 arbres de l'inventaire forestier du Québec}
\description{
Extrait de 200 arbres des placettes-échantillons permanentes de l'inventaire
forestier du Québec, mesurés entre 2015 et 2025 dans une trentaine de régions
écologiques. L'extrait retient les quatre espèces les plus fréquentes (bouleau
à papier, épinette noire, érable rouge et sapin baumier), à raison de 50 arbres
par espèce et d'un seul arbre par placette. Seuls les arbres d'au moins 9 cm de
diamètre sont mesurés à l'inventaire. Comme le nombre d'arbres par espèce a été
fixé, l'extrait n'est pas représentatif de la composition de la forêt.
}
\usage{arbres}
\format{
200 lignes et 21 variables, dont :
\describe{
  \item{\code{species_fr}, \code{species_latin}, \code{species_code}}{espèce (nom français, nom latin, code).}
  \item{\code{genus}, \code{family}}{genre et famille botaniques.}
  \item{\code{diameter_cm}}{diamètre à hauteur de poitrine, en cm.}
  \item{\code{height_m}}{hauteur, en m.}
  \item{\code{age_years}}{âge, en années (parfois manquant).}
  \item{\code{basal_area_m2}}{surface terrière, en m².}
  \item{\code{canopy_stratum}}{position dans le couvert : « Dominant », « Codominant », « Intermédiaire » ou « Opprimé ».}
  \item{\code{ecological_region}}{région écologique.}
  \item{\code{survey_year}}{année de mesure.}
  \item{\code{plot_id}, \code{tree_id}, \code{record_id}}{identifiants de la placette, de l'arbre et de la mesure.}
}
Les autres variables décrivent la qualité des observations et la règle
d'échantillonnage de l'extrait.
}
\keyword{datasets}
