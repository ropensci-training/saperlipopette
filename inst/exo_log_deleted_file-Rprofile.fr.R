if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Je veux trouver quel commit a supprimé un fichier !"'
)
cli::cli_alert_danger(
  "Trouve quel commit a supprimé R/script.R !"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git log --oneline}",
      "{.code git log --oneline -- R/script.R}"
    )
  )
}
