if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Trouve qui a ajouté la ligne \'x <- x + 1\' au script R/script.R et quand !"'
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "{.code git blame R/script.R}"
    )
  )
}
