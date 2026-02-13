if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"Je veux trouver quel commit a supprimé une ligne !"')
cli::cli_alert_danger(
  "Trouve quel commit a supprimé la ligne 'iris' du fichier texte !"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git log --oneline}",
      '{.code git log -S"iris" fleurs.txt}',
      '{.code git log -G"iris" fleurs.txt}'
    )
  )
}
