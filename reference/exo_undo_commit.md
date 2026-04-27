# "Oh shit, I need to undo a commit from like 5 commits ago!"

To go with <https://ohshitgit.com/#undo-a-commit>

## Usage

``` r
exo_undo_commit(parent_path)
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

[`git log`](https://git-scm.com/docs/git-log),
[`git revert`](https://git-scm.com/docs/gitworktr-revert).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_undo_commit(parent_path = parent_path)
}
```
