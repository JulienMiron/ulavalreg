\name{qualite_air}
\alias{qualite_air}
\docType{data}
\encoding{UTF-8}
\title{Qualité de l'air horaire au Québec en 2025}
\description{
Mesures horaires de 2025 des 42 stations du Réseau de surveillance de la
qualité de l'air du Québec (RSQAQ), diffusées par Données Québec et préparées
par donneesbleues.ca. Le nombre de stations qui mesurent un contaminant varie
de 2 à 40, d'où de nombreuses valeurs manquantes.
}
\usage{qualite_air}
\format{
Un tableau d'une ligne par station et par heure, dont :
\describe{
  \item{\code{Station}}{code et nom de la station (par exemple « 06600 - Longueuil »).}
  \item{\code{Date_Heure}}{date et heure (heure normale de l'Est), qui marque la fin de l'intervalle mesuré.}
  \item{\code{O3}}{ozone, en ppb.}
  \item{\code{NO2}}{dioxyde d'azote, en ppb.}
  \item{\code{PM2.5.T640}}{particules fines, en µg/m³.}
}
Les autres colonnes donnent les concentrations d'autres contaminants.
}
\source{\url{https://donneesbleues.ca/datasets/qualite-air-horaire/fiche.html}}
\keyword{datasets}
