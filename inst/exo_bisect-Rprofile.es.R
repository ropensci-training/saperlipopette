if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"¿Desde cuando no funciona {.path R/script.R}?"'
)
cli::cli_alert_danger("Tengo que usar git bisect.")
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "Ejecuta R/script.R, ve que hay un error.",
      "{.code git bisect start}",
      "{.code git bisect bad} (la versión actual no funciona).",
      "{.code git bisect good <first-commit-SHA>} (la primera versión funcionaba).",
      "A cada etapa ejecuta R/script.R y escribe {.code git bisect bad} si hay un error, {.code git bisect good} si no hay un error.",
      "Continuar hasta que git bisect te muestre el culpable.",
      "{.code git bisect reset} para salir del modo.",
      "Inspecciona la diff Git del commit culpable.",
      "Avanzado : en vez de las instruccionnes 'a cada etapa', ejecuta {.code git bisect run Rscript R/script.R}."
    )
  )
}
