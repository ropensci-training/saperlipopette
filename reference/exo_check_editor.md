# "Hey, I don't want to get into Vim by mistake!"

An exercice to check your Git's core.editor is set correctly.
<https://docs.github.com/es/get-started/git-basics/associating-text-editors-with-git>

## Usage

``` r
exo_check_editor(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Workflow

Running the function will create the exercise as a new folder in
`parent_path`. If called from RStudio or Positron, the function will
open a new R session in that IDE. If not, the user will need to navigate
to the path returned by the function, and launch an R session from
there. The new R session will display messages about what challenge to
solve, and running the `tip()` function from that new R session will
display additional guiance.

## Related Git documentation

[`git config`](https://git-scm.com/docs/git-config),
[`git commit --allow-empty`](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---allow-empty).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_check_editor(parent_path = parent_path)
}
```
