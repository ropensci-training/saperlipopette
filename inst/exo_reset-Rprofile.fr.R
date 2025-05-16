if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Hum, je veux que l\'historique de commits de la branche feature semble plus malin !"'
)
cli::cli_alert_info(
  "Je peux défaire les commits tout en gardant les changements dans les fichiers."
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "Trouver le dernier commit avant les changements.",
      "{.code git reset --mixed <commit-id>}.",
      "Faire un commit par fichier.",
      "Examiner l'historique Git et les fichiers."
    )
  )
}
