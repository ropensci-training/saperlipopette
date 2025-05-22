if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Mierda, hice commit e inmediatamente me di cuenta que tenia que hacer un pequeño cambio!"'
)
cli::cli_alert_danger(
  "Queria listar 3 cosas en mi archivo bla, no 2 !"
)
cli::cli_alert_info(
  "Ve {.url https://ohshitgit.com/es#cambiar-ultimo-commit}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Añade 'cosa 3' al archivo {.path bla}, pues guardarlo.",
      "{.code git add bla}",
      "{.code git commit --amend --no-edit}",
      "Inspecciona la historia de Git.""
    )
  )
}
