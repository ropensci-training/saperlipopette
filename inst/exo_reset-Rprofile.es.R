if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Uy, quiero que la historia de git de la rama feature parezca más inteligente !"'
)
cli::cli_alert_info(
  "Puedo deshacer los commits pero conservar los cambios en los archivos."
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "Encuentra el último commit antes de los cambios.",
      "{.code git reset --mixed <commit-id>}.",
      "Hacer un commit para cada archivo.",
      "Inspecciona la historia de Git y los archivos."
    )
  )
}
