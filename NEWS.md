# saperlipopette (development version)

Many changes thanks to reviews by reviewers Jeff Oliver and Mine Çetinkaya-Rundel and editors Alec Robitaille. 

## Interface

- Remove the exclamation mark at the end of the message indicating the path.

## Documentation

- Clarify use cases of the package.
- Explain what happens automatically.
- Clarify example, explain withr's temporary path.
- Document Workflow in each manual page.
- Improve the manual page of `create_all_exercises()`.
- Mention in README that the Wiktionary link of saperlipopette includes a recording of the pronunciation of the word.

## Internal

- Document fs helpers.
- Document and rename Git helpers.
- Document internationalization helpers.
- Document usethis wrapper.
- Rename R scripts to align them with the function they contain.
- Use roxygen2 from CRAN.
- Add minimal R version.


# saperlipopette 0.1.1

* Fix tests for interactive testing within RStudio or Positron (thanks `@robitalec`).

* New `exo_blame()` exercise to practice finding who added a specific line with `git blame`.

* New `exo_log_deleted_file()` exercise to practice finding a deleted file with `git log -- <path>`.

* New `exo_log_deleted_line()` exercise to practice finding a deleted line with `git log --S<string>` or `git log --R<regex>`.

* New `exo_revparse()` exercise to practice parsing ancestry references with `git rev-parse`.

* New `exo_worktree()` exercise to practice `git worktree`.

* Add instructions with "switch" and "restore" alongside "checkout" equivalents (#30).

# saperlipopette 0.1.0

* Translation to Spanish of saperlipopette's messages, Git commit messages (#25).

* Translation to French of saperlipopette's messages, Git commit messages (#24).

* Initial set of playgrounds.
