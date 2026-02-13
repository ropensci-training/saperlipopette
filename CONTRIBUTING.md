# NA

We welcome your contributions!

Please open an issue for any larger change (new exercise for instance).

## Contributing a new exercise

Create `R/<exercise-name>.R` with the `exo_<exercise_name>()` function

- Follow the pattern of existing exercises
  (e.g. [`exo_revert_file()`](https://docs.ropensci.org/saperlipopette/reference/exo_revert_file.md))
- Use `@inheritParams exo_one_small_change` for the `parent_path`
  parameter
- Use `@git` to list related git commands (these generate doc links)
- Use `@export`
- Wrap user-facing strings in `tr_()` for translation support

If the `@git` tag references new git commands, add entries in
`R/roxygen2.R` `git_links()` with the command name, display name, and
URL

Create `inst/exo_<exercise_name>-Rprofile.en.R` with the challenge
prompt and `tip()` function

Create `inst/exo_<exercise_name>-Rprofile.fr.R` (French translation)

Create `inst/exo_<exercise_name>-Rprofile.es.R` (Spanish translation)

Update `po/` translation files:

- Run `potools::po_extract()` to update the `.pot` file with new `tr_()`
  strings
- Run `potools::po_update()` to sync `.po` files with the updated `.pot`
- Run `potools::po_compile()`.
- Update `po/R-fr.po` and `po/R-es.po` with translations for new strings

Create `tests/testthat/test-<exercise-name>.R`

- Snapshot `gert::git_log(repo = path)[["commit"]]`
- Test any other relevant repo state (tags, branches, etc.)

Add `exo_<exercise_name>` to `_pkgdown.yml` in the appropriate section

Add a bullet to `NEWS.md` under the development version heading

Run `devtools::document()` to update NAMESPACE

Run tests and accept new snapshots
