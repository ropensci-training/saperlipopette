if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Mince, comment je supprime en un coup tous ces fichiers de débogage ?"'
)
cli::cli_alert_danger(
  "Je veux supprimer le dossier 'debugging' et les fichiers 'debug'."
)
cli::cli_alert_info("Voir {.url https://git-scm.com/docs/git-clean/fr}")
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git et les fichiers.",
      "{.code git clean -n -d}",
      "{.code git clean -f -d}",
      "Examiner l'historique Git et les fichiers."
    )
  )
}
