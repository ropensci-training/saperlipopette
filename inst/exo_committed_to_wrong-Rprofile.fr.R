if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Et merde, je me suis trompé·e de branche pour mon commit !"'
)
cli::cli_alert_danger(
  "Je voulais que mon dernier commit, qui crée bla, soit sur la branche feat-bla, pas sur la branche hot-fix !"
)
cli::cli_alert_info(
  "Voir {.url https://ohshitgit.com/fr#commit-dans-mauvaise-branche}"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git checkout feat-bla}",
      "{.code git cherry-pick hot-fix}",
      "{.code git checkout hot-fix}",
      "{.code git reset HEAD~ --hard}",
      "Examiner l'historique Git des branches feat-bla et hot-fix."
    )
  )
}
