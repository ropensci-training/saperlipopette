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
