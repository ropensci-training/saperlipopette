% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/committed-to-wrong-branch.R
\name{exo_committed_to_wrong}
\alias{exo_committed_to_wrong}
\title{"Oh shit, I accidentally committed to the wrong branch!"}
\usage{
exo_committed_to_wrong(parent_path)
}
\arguments{
\item{parent_path}{Path where to create the exercise repo}
}
\value{
The path to the new project
}
\description{
To go with \url{https://ohshitgit.com/#accidental-commit-wrong-branch}
}
\section{Git commands}{

\verb{git cherry-pick}, \verb{git reset}, \verb{git checkout}
}

\examples{
\dontshow{if (interactive()) withAutoprint(\{ # examplesIf}
parent_path <- withr::local_tempdir()
path <- exo_committed_to_wrong(parent_path = parent_path)
\dontshow{\}) # examplesIf}
}
