# Fonctions utilitaires du livre « Au-delà de la régression linéaire ».

vc_n <- function(modele) {
  # Validation croisée par exclusion d'une observation (LOOCV) sans
  # réajustement : formule exacte pour un modèle linéaire (lm), approximation
  # pour un GLM à lien canonique (chapitre sur la validation croisée).
  e <- residuals(modele, type = "response")
  h <- hatvalues(modele)
  mean((e / (1 - h))^2)
}

hosmer_lemeshow <- function(modele, G = 10) {
  # Test de Hosmer-Lemeshow pour une régression logistique sur des données
  # individuelles (0 ou 1) : G groupes formés selon les probabilités prédites.
  y <- modele$y
  p <- fitted(modele)
  groupe <- floor(G * (rank(p, ties.method = "first") - 1) / length(p)) + 1  # comme dplyr::ntile
  n <- tapply(y, groupe, length)
  O <- tapply(y, groupe, sum)
  E <- tapply(p, groupe, sum)
  C <- sum((O - E)^2 / (E * (1 - E / n)))
  data.frame(C = C, ddl = G - 2, valeur_p = pchisq(C, G - 2, lower.tail = FALSE))
}

residus_groupes <- function(modele, G = 20) {
  # Résidus groupés (binned residuals) d'une régression logistique : résidu
  # brut moyen et probabilité prédite moyenne par groupe, avec la borne de
  # ±2 erreurs-types.
  p <- fitted(modele)
  r <- modele$y - p
  groupe <- floor(G * (rank(p, ties.method = "first") - 1) / length(p)) + 1  # comme dplyr::ntile
  p_moy <- tapply(p, groupe, mean)
  data.frame(
    groupe = as.integer(names(p_moy)),
    p_moy = as.vector(p_moy),
    r_moy = as.vector(tapply(r, groupe, mean)),
    n = as.vector(tapply(r, groupe, length)),
    borne = as.vector(2 * sqrt(p_moy * (1 - p_moy) / tapply(r, groupe, length)))
  )
}

knn_moy <- function(x, X, Y, k) {
  # Estimateur des k plus proches voisins en x (une variable explicative) :
  # moyenne des Y_i tels que |X_i - x| <= d_(k)(x), ex æquo compris.
  d <- abs(X - x)
  mean(Y[d <= sort(d)[k] + 1e-8])
}
