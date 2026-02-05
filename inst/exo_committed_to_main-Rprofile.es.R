if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Mierda, accidentalmente hice commit de algo a main que debía haber sido en una rama nueva!"'
)
cli::cli_alert_danger(
  "Queria que mi ultimo commit, que crea bla, fuese en una rama nueva!"
)
cli::cli_alert_info(
  "Ve {.url https://ohshitgit.com/es#commit-a-master-accidental}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "Comprueba que estamos en la rama main.",
      "{.code git branch feat-bla}",
      "Volver a la rama, {.code git switch main} o {.code git checkout main}",
      "{.code git reset HEAD~ --hard}",
      "{.code git switch feat-bla} o {.code git checkout feat-bla}",
      "Inspecciona la historia de Git de las ramas main y feat-bla."
    )
  )
}
