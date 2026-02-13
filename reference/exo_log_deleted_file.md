# "I want to find which commit deleted a file!"

I want to find which commit deleted script.R. The tool for that is
`git log --oneline -- path`.

## Usage

``` r
exo_log_deleted_file(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git log -- <path>`](https://git-scm.com/docs/git-log#Documentation/git-log.txt---path).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_log_deleted_file(parent_path = parent_path)
}
```
