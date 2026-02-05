if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Et merde, j\'ai commité sur le main alors que ça aurait dû aller sur une nouvelle branche !"'
)
cli::cli_alert_danger(
  "Je voulais que mon dernier commit, celui qui crée bla, soit sur une nouvelle branche !"
)
cli::cli_alert_info(
  "Voir {.url https://ohshitgit.com/fr#erreur-commit-master}"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "Vérifier qu'on est sur la branche main.",
      "{.code git branch feat-bla}",
      "Retourner sur la branche main, {.code git switch main} ou {.code git checkout main}",
      "{.code git reset HEAD~ --hard}",
      "{.code git switch feat-bla} ou {.code git checkout feat-bla}",
      "Examiner l'historique Git des branches main et feat-bla."
    )
  )
}
