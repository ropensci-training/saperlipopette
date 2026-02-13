# "I want to find which commit deleted a line!"

I want to find which commit deleted the line "iris" from the text file.
The tool for that is `git log -S<string> path/to/file` or
`git log -G<regex> path/to/file`.

## Usage

``` r
exo_log_deleted_line(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git log -S<string>`](https://git-scm.com/docs/git-log#Documentation/git-log.txt--Sstring),
[`git log -G<regex>`](https://git-scm.com/docs/git-log#Documentation/git-log.txt--Gregex).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_log_deleted_line(parent_path = parent_path)
}
```
