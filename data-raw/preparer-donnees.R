# Recrée les fichiers data/*.rda à partir des fichiers CSV du livre.
# À lancer depuis la racine du paquet, en donnant le dossier qui contient les
# CSV (dossier « notes/Jeux de données » du dépôt STT-4300-source) :
#   Rscript data-raw/preparer-donnees.R "../STT-4300-source/notes/Jeux de données"
args <- commandArgs(trailingOnly = TRUE)
dossier <- if (length(args) > 0) args[1] else
  file.path("..", "STT-4300-source", "notes", "Jeux de données")
stopifnot(dir.exists(dossier))

empress_individus <- read.csv(file.path(dossier, "empress_individus.csv"), encoding = "UTF-8")
empress_agrege    <- read.csv(file.path(dossier, "empress_agrege.csv"), encoding = "UTF-8")
arbres            <- read.csv(file.path(dossier, "arbres.csv"), encoding = "UTF-8")
qualite_air       <- read.csv(file.path(dossier, "qualite_air.csv"), fileEncoding = "UTF-8-BOM")
for (nom in c("empress_individus", "empress_agrege", "arbres", "qualite_air")) {
  save(list = nom, file = file.path("data", paste0(nom, ".rda")), compress = "xz")
}
