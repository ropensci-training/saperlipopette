# Helpers for internationalization

# "Explicit" style
# https://michaelchirico.github.io/potools/articles/developers.html?q=tr_#explicit-style
tr_ <- function(...) {
  enc2utf8(gettext(paste0(...), domain = "R-saperlipopette"))
}

# Use the right Rprofile template for the language
create_r_profile <- function(exo_name) {
  current_language <- tr_("en")

  profile_path <- sprintf("exo_%s-Rprofile.%s.R", exo_name, current_language)

  if (!nzchar(system.file(profile_path, package = "saperlipopette"))) {
    profile_path <- sprintf("exo_%s-Rprofile.%s.R", exo_name, "en")
  }

  file.copy(
    system.file(profile_path, package = "saperlipopette"),
    ".Rprofile"
  )
}
