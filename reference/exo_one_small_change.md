# "Oh shit, I committed and immediately realized I need to make one small change!"

To go with <https://ohshitgit.com/#change-last-commit>

## Usage

``` r
exo_one_small_change(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path

## Workflow

Running the function will create the exercise as a new folder in
`parent_path`. If called from RStudio or Positron, the function will
open a new R session in that IDE. If not, the user will need to navigate
to the path returned by the function, and launch an R session from
there. The new R session will display messages about what challenge to
solve, and running the `tip()` function from that new R session will
display additional guiance.

## Related Git documentation

[`git commit --amend --no-edit`](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---no-edit).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_one_small_change(parent_path = parent_path)
# Now add "thing 3" to the "bla" file
# And amend the latest commit
}
```
