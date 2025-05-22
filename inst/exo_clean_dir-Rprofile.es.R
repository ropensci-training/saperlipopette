if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Uy, cómo elimino de una vez todos estos archivos de depuración ?"'
)
cli::cli_alert_danger(
  "Quiero eliminar la carpeta 'debugging' y los archivos 'debug'."
)
cli::cli_alert_info("Ve {.url https://git-scm.com/docs/git-clean}")
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git y los archivos.",
      "{.code git clean -n -d}",
      "{.code git clean -f -d}",
      "Inspecciona la historia de Git y los archivos."
    )
  )
}
