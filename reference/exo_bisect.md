# "Hey I'd like to find which commit introduced a bug!"

I notice a bug in my codebase. I can see the bug was not there a bunch
of commits ago. Beside doing regular debugging, I can find out which
commit introduced the bug by using `git bisect`. See
<https://git-scm.com/docs/git-bisect> and
<https://www.jimhester.com/post/2019-04-24-git-bisect/>.

## Usage

``` r
exo_bisect(parent_path)
```

## Arguments

- parent_path:

  Path where to create the exercise repo

## Value

The path to the new project

## Related Git documentation

[`git bisect`](https://git-scm.com/docs/git-bisect).

## Examples

``` r
if (FALSE) { # interactive()
parent_path <- withr::local_tempdir()
path <- exo_bisect(parent_path = parent_path)
}
```
