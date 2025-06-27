if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

cli::cli_alert_danger(
  '"Hum, je ne veux pas entrer dans Vim par erreur!"'
)

config <- gert::git_config_global()
option <- config$value[config$name == "core.editor"]

if (!nzchar(option)) {
  cli::cli_alert_info(
    "Vous n'avez pas encore réglé l'option core.editor de Git."
  )
} else {
  cli::cli_alert_info(
    "Votre option core.editor de Git est '{option}'."
  )
}
cli::cli_alert_danger(
  "Quel éditeur de texte Git ouvrirait-il pour vous ?"
)
cli::cli_alert_info(
  "Voir {.url https://docs.github.com/fr/get-started/git-basics/associating-text-editors-with-git}"
)
cli::cli_alert_info("Pour plus d'aide, {.run tip()}")

tip <- function() {
  cli::cli_li(
    items = c(
      "{.code git commit --allow-empty}",
      "Pas content·e de l'éditeur ? Fermez-le, puis réglez l'option core.editor de Git.",
      "{.code git commit --allow-empty}"
    )
  )
}
