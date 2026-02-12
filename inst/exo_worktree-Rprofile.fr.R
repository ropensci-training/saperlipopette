if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"Je veux savoir comment était flowers.txt au tag v2!"')
cli::cli_alert_danger(
  "Crée un dossier contenant le projet comme il était au tag v2."
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examiner l'historique Git.",
      "{.code git worktree add ../v2 v2}",
      "Ouvre {.path ../v2/flowers.txt}",
      "{.code git worktree list}",
      "{.code git worktree v2}",
      "{.code git worktree list}"
    )
  )
}
