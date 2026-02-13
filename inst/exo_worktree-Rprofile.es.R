if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger('"Quiero saber cómo era flores.txt en el tag v2!"')
cli::cli_alert_danger(
  "Crea una carpeta con el proyecto como era en el tag v2."
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "{.code git worktree add ../v2 v2}",
      "Abre {.path ../v2/flores.txt}",
      "{.code git worktree list}",
      "{.code git worktree v2}",
      "{.code git worktree list}"
    )
  )
}
