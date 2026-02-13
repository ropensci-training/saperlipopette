if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"Quiero encontrar qué commit eliminó una línea!"')
cli::cli_alert_danger(
  "Encuentra qué commit eliminó la línea 'iris' del archivo de texto!"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examina el historial de Git.",
      "{.code git log --oneline}",
      '{.code git log -S"iris" flores.txt}',
      '{.code git log -G"iris" flores.txt}'
    )
  )
}
