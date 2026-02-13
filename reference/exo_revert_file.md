# "Oh shit, I need to undo my changes to a file!"

To go with <https://ohshitgit.com/#undo-a-file>

## Usage

``` r
exo_revert_file(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git log`](https://git-scm.com/docs/git-log),
[`git restore`](https://git-scm.com/docs/git-restore),
[`git checkout`](https://git-scm.com/docs/git-checkout),
[`git commit`](https://git-scm.com/docs/git-commit).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_revert_file(parent_path = parent_path)
}
```
