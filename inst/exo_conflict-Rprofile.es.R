if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Quiero fusionar la rama feature a la rama main."'
)
cli::cli_alert_danger("Voy a tener que ocuparme de un 'merge conflict'.")
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "{.code git merge feature} en la rama por defecto",
      "Modificar R/script.R hasta que sea como quieres, suprimir los marcadores de conflicto.",
      "{.code git add R/script.R}",
      "{.code git commit}.",
      "Mira como se finaliza la fusión, si se necesita modifica un mensaje de commit.",
      "Inspecciona la historia de Git."
    )
  )
}
