if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Hum, je veux que l\'historique de commits de la branche feature semble plus malin !"'
)
cli::cli_alert_info(
  "Voir {.url https://www.digitalocean.com/community/tutorials/how-to-rebase-and-update-a-pull-request}"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "Trouver le commit pour le rebase avec {.code git merge-base feature main}",
      "{.code git rebase -i <commit-id>} autant de fois que nécessaire (une fois pour changer l'ordre, une fois pour écraser des commits ensemble, etc).",
      "Examiner l'historique Git et les fichiers."
    )
  )
}
