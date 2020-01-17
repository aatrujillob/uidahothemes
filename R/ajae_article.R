#' American Journal of Agricultural Economics submission.
#'
#' Format for creating submissions to the American Journal of Agricultural Economics.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "ajae_article", package = "uidahothemes")
#' }
#'
#' @export

ajae_article <- function(...,
                        keep_tex = TRUE,
                        md_extensions = c("-autolink_bare_uris")) {
  
  template = find_resource("ajae_article", "template.tex")
  
  inherit_pdf_document(...,
                       template = template,
                       keep_tex = keep_tex,
                       md_extensions = md_extensions)
}
