if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Oh shit, I did something terribly wrong, please tell me git has a magic time machine!?!"'
)
cli::cli_alert_danger(
  "I mistakenly run {.code git reset hard} so lost my feature commit."
)
cli::cli_alert_danger("I want to get it back!")
cli::cli_alert_info("See {.url https://ohshitgit.com/#magic-time-machine}")
cli::cli_alert_info("For more help use {.run tip()}")

tip <- function() {
  cli::cli_li("{.code git reflog}")
  cli::cli_li('{.code git reset HEAD@{1}}')
  cli::cli_li('Examine Git history.')
}
