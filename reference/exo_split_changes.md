# "Hey I'd like to split these changes to the same file into several commits!"

I made many edits to a file, in different places. This is too much for a
commit, since small commits are best practice. I need to add the changes
to Git bit by bit. The tool for that is `git add --patch`, also
available as `git add -p`. If all your changes are presented to you as
one chunk by `git add --patch`, choose the "s" option for splitting. See
<https://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging#_staging_patches>.

Note that patch is also an option for `git commit`, if you prefer so.

## Usage

``` r
exo_split_changes(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git add --patch`](https://git-scm.com/docs/git-add#Documentation/git-add.txt---patch).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_split_changes(parent_path = parent_path)
}
```
