# "Hey I'd like to remove these untracked files I created to test stuff!"

If debugging for instance created now useless untracked files and
directories, there's no need to remove them "manually". The tool for
that is `git clean`:

- `git clean -n` for a dry run;

- `git clean -f` to run it; Add `-d` to also remove directories. See
  <https://git-scm.com/docs/git-clean>.

## Usage

``` r
exo_clean_dir(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git clean`](https://git-scm.com/docs/git-clean).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_clean_dir(parent_path = parent_path)
}
```
