# Read inst/paper/paper.md and fill vignettes/articles/paper.qmd with its content
# Run from the package root directory

paper_md <- readLines("inst/paper/paper.md")

# Skip the YAML front matter from paper.md
yaml_start <- which(paper_md == "---")[1]
yaml_end <- which(paper_md == "---")[2]
body <- paper_md[(yaml_end + 1):length(paper_md)]

# Change h1 headers to h2
body <- gsub("^# ", "## ", body)

# Fix image path to use local jose.png
body <- gsub("\\]\\[.*/jose\\.png\\]", "](jose.png)", body)

qmd_header <- c(
  "---",
  'title: "saperlipopette, a risk-free playground for learning more Git"',
  "bibliography: paper.bib",
  "knitr:",
  "  opts_chunk:",
  "    collapse: true",
  "    comment: '#>'",
  "---",
  ""
)

writeLines(c(qmd_header, body), "vignettes/articles/paper.qmd")

# Copy bib and png files to vignettes/articles/
file.copy("inst/paper/paper.bib", "vignettes/articles/", overwrite = TRUE)
file.copy("inst/paper/jose.png", "vignettes/articles/", overwrite = TRUE)
