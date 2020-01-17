#' Uidahothemes Class Reading list
#'
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "latex_journal_format", package = "uiucthemes")
#' }
#'
#'
ReadingList = function(..., keep_tex = TRUE, citation_package = 'natbib') {

  template = find_resource("ReadingList", "template.tex")

  base = inherit_pdf_document(
    ..., template = template, keep_tex = keep_tex, citation_package = citation_package
  )

  base$pandoc$toc = FALSE
  base$pandoc$number_sections = FALSE

  base$knitr$opts_chunk$prompt = FALSE   # changed from TRUE
  base$knitr$opts_chunk$comment = '# '   # default to one hashmark
  base$knitr$opts_chunk$highlight = TRUE # changed as well

  base$knitr$opts_chunk$dev.args = list(pointsize = 11)
  base$knitr$opts_chunk$fig.width = 4.9 # 6.125" * 0.8, as in template
  base$knitr$opts_chunk$fig.height = 3.675 # 4.9 * 3:4
  base$knitr$opts_chunk$fig.align = "center"

  load_resources_if_missing("ReadingList")

  base
}
