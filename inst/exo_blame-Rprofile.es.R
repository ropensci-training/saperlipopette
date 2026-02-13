if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Encuentra quién añadió la línea \'x <- x + 1\' al script R/script.R y cuándo!"'
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "{.code git blame R/script.R}"
    )
  )
}
