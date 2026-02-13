# "I want to find who added a specific line!"

I want to find who added the line `x <- x + 1` to the script and when.
The tool for that is `git blame path/to/file`.

## Usage

``` r
exo_blame(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git blame`](https://git-scm.com/docs/git-blame).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_blame(parent_path = parent_path)
}
```
