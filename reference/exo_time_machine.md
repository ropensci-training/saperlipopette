# "Oh shit, I did something terribly wrong, please tell me git has a magic time machine!?!"

To go with <https://ohshitgit.com/#magic-time-machine>

## Usage

``` r
exo_time_machine(parent_path)
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

[`git reset`](https://git-scm.com/docs/git-reset),
[`git reflog`](https://git-scm.com/docs/git-reflog).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_time_machine(parent_path = parent_path)
}
```
