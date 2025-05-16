if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Et merde, je veux annuler un truc genre 5 commits en arrière !"'
)
cli::cli_alert_danger(
  "Je veux défaire mon commit 'fix: répare les choses' car il a cassé des trucs !"
)
cli::cli_alert_info("Voir {.url https://ohshitgit.com/fr#annuler-un-commit}")
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git revert <hash-you-see>}",
      "Examiner l'historique Git et les fichiers."
    )
  )
}
