if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Find who added the line \'x <- x + 1\' to the script R/script.R and when!"'
)
cli::cli_alert_info("For more help use {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "{.code git blame R/script.R}"
    )
  )
}
