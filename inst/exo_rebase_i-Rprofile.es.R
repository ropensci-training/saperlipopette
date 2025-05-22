if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Uy, quiero que la historia de git de la rama feature parezca más inteligente !"'
)
cli::cli_alert_info(
  "Ve {.url https://www.digitalocean.com/community/tutorials/how-to-rebase-and-update-a-pull-request}"
)
cli::cli_alert_info("Para más ayuda, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "Inspecciona la historia de Git.",
      "Encuentra el commit para el rebase con {.code git merge-base feature main}",
      "{.code git rebase -i <commit-id>} cuantas veces necesitas (una vez para cambiar el orden, una vez para fusionar commits juntos, etc).",
      "Inspecciona la historia de Git y los archivos."
    )
  )
}
