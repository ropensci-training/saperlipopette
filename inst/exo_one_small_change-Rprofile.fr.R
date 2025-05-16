if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Et merde, je viens de commiter et il manque une toute petite modification !"'
)
cli::cli_alert_danger(
  "Je voulais lister 3 choses dans mon fichier bla, pas seulement 2 !"
)
cli::cli_alert_info(
  "Voir {.url https://ohshitgit.com/fr#modifier-le-dernier-commit}"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Ajouter 'chose 3' au fichier {.path bla} puis l'enregistrer.",
      "{.code git add bla}",
      "{.code git commit --amend --no-edit}",
      "Examiner l'historique Git."
    )
  )
}
