if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Hey, I don\'t want to get into Vim by mistake!"'
)

config <- gert::git_config_global()
option <- config$value[config$name == "core.editor"]

if (!nzchar(option)) {
  cli::cli_alert_info(
    "You have not set the Git's core.editor option yet."
  )
} else {
  cli::cli_alert_info(
    "Your Git's core.editor option is '{option}'."
  )
}
cli::cli_alert_danger(
  "What text editor would Git open for you?"
)
cli::cli_alert_info(
  "See {.url https://docs.github.com/en/get-started/git-basics/associating-text-editors-with-git}"
)
cli::cli_alert_info("For more help use {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "{.code git commit --allow-empty}",
      "Not happy with the editor? Close editor, set core.editor's option.",
      "{.code git commit --allow-empty}"
    )
  )
}
