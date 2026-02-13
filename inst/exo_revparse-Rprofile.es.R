if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"Quiero entender las referencias de ascendencia!"')
cli::cli_alert_danger(
  "Encuentra el identificador y el mensaje del commit HEAD~5 y HEAD^^."
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Examina el historial de Git.",
      "{.code git rev-parse HEAD~5}",
      "{.code git show HEAD~5}",
      "{.code git rev-parse HEAD^^}",
      "{.code git show HEAD^^}"
    )
  )
}
