if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Uy, no quiero entrar en Vim por error!"'
)

config <- gert::git_config_global()
option <- config$value[config$name == "core.editor"]

if (!nzchar(option)) {
  cli::cli_alert_info(
    "No has arreglado la opción core.editor de Git aún."
  )
} else {
  cli::cli_alert_info(
    "Tu opción core.editor de Git es '{option}'."
  )
}
cli::cli_alert_danger(
  "Cual editor de texto Git abriría para ti ?"
)
cli::cli_alert_info(
  "Ve {.url https://docs.github.com/es/get-started/git-basics/associating-text-editors-with-git}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "{.code git commit --allow-empty}",
      "¿No te gusta el editor que abrió Git ? Cierralo, pues arregla la opción core.editor de Git.",
      "{.code git commit --allow-empty}"
    )
  )
}
