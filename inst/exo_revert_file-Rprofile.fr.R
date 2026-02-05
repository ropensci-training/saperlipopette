if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Et merde, je veux annuler la modification d\'un fichier !"'
)
cli::cli_alert_danger(
  "Je veux que bla.txt soit comme il était avant le commit 'fix: fix things' !"
)
cli::cli_alert_info("Voir {.url https://ohshitgit.com/fr#annuler-un-fichier}")
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git restore bla.txt --source=[saved hash]} ou {.code git checkout [saved hash] -- bla.txt}",
      "{.code git commit -m 'no need to copy-paste yay'}",
      "Examiner l'historique Git."
    )
  )
}
