if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Mierda, accidentalmente hice commit a la rama equivocada!"'
)
cli::cli_alert_danger(
  "Queria que mi ultimo commit, que crea bla, fuese en la rama feat-bla, no en la rama hot-fix !"
)
cli::cli_alert_info(
  "Ve {.url https://ohshitgit.com/es#commit-accidental-en-rama-equivocada}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "{.code git checkout feat-bla}",
      "{.code git cherry-pick hot-fix}",
      "{.code git checkout hot-fix}",
      "{.code git reset HEAD~ --hard}",
      "Examina el historial Git de las ramas feat-bla y hot-fix."
    )
  )
}
