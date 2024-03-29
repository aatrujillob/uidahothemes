#' "Idaho Themed Beamer Presentation Template for RMarkdown
#'
#' Generates from an RMarkdown file a Beamer presentation with idaho
#' colors and identity standards.
#' @inheritParams rmarkdown::beamer_presentation
#' @return A modified \code{beamer_presentation} based on the "idaho
#'  Beamer themed template.
#' @export
#' @author RStudio RMarkdown Team (Everything) & JJB (Theme hook + Beamer Theme)
#' @examples
#' \dontrun{
#' # Generate slide deck from beamer template
#' rmarkdown::draft("slide_deck.Rmd", template = "beamer_vandals", package = "uidahothemes")
#'
#' # Compile the document
#' rmarkdown::render("slide_deck/slide_deck.Rmd")
#' }

beamer_vandals <- function(toc = FALSE,
                           slide_level = 3,
                           incremental = FALSE,
                           fig_width = 10,
                           fig_height = 7,
                           fig_crop = TRUE,
                           fig_caption = TRUE,
                           dev = 'pdf',
                           df_print = "default",
                           fonttheme = "default",
                           highlight = "default",
                           keep_tex = FALSE,
                           latex_engine = "pdflatex",
                           citation_package = c("default", "natbib", "biblatex"),
                           includes = NULL,
                           md_extensions = NULL,
                           pandoc_args = NULL){
  
  template <- find_resource("beamer_vandals", "template.tex")
  
  load_resources_if_missing("beamer_vandals", c("ilogo.pdf"))
  
  rmarkdown::beamer_presentation(template = template,
                                 toc = toc,
                                 slide_level = slide_level,
                                 incremental = incremental,
                                 fig_width = fig_width,
                                 fig_height = fig_height,
                                 fig_crop = fig_crop,
                                 fig_caption = fig_caption,
                                 dev = dev,
                                 df_print = df_print,
                                 fonttheme = fonttheme,
                                 highlight = highlight,
                                 keep_tex = keep_tex,
                                 latex_engine = latex_engine,
                                 citation_package = citation_package,
                                 includes = includes,
                                 md_extensions = md_extensions,
                                 pandoc_args = pandoc_args)
  
}


#' beamer_illinois <- function(toc = FALSE,
#'                             slide_level = 3,
#'                             incremental = FALSE,
#'                             fig_width = 10,
#'                             fig_height = 7,
#'                             fig_crop = TRUE,
#'                             fig_caption = TRUE,
#'                             dev = 'pdf',
#'                             df_print = "default",
#'                             fonttheme = "default",
#'                             highlight = "default",
#'                             keep_tex = FALSE,
#'                             latex_engine = "pdflatex",
#'                             citation_package = c("none", "natbib", "biblatex"),
#'                             includes = NULL,
#'                             md_extensions = NULL,
#'                             pandoc_args = NULL){
#' 
#'   template <- find_resource("beamer_illinois", "template.tex")
#' 
#'   load_resources_if_missing("beamer_illinois", c("ilogo.pdf"))
#' 
#'   rmarkdown::beamer_presentation(template = template,
#'                                  toc = toc,
#'                                  slide_level = slide_level,
#'                                  incremental = incremental,
#'                                  fig_width = fig_width,
#'                                  fig_height = fig_height,
#'                                  fig_crop = fig_crop,
#'                                  fig_caption = fig_caption,
#'                                  dev = dev,
#'                                  df_print = df_print,
#'                                  fonttheme = fonttheme,
#'                                  highlight = highlight,
#'                                  keep_tex = keep_tex,
#'                                  latex_engine = latex_engine,
#'                                  citation_package = citation_package,
#'                                  includes = includes,
#'                                  md_extensions = md_extensions,
#'                                  pandoc_args = pandoc_args)
#' 
#' }
#' 
#' #' Beamer Illinois Orange Presentation Template for RMarkdown
#' #'
#' #' Generates from an RMarkdown file a Beamer presentation with "Illinois" (UIUC)
#' #' colors and identity standards with a focus on "Orange" and "White".
#' #' @inheritParams rmarkdown::beamer_presentation
#' #' @return A modified \code{beamer_presentation} based on the "Illinois" (UIUC)
#' #'  Beamer themed template.
#' #' @export
#' #' @author
#' #' RStudio RMarkdown Team (Everything), JJB (Theme hook), Prof. Steven A Culpepper (Beamer Orange Theme)
#' #' @examples
#' #' \dontrun{
#' #' # Generate slide deck from beamer template
#' #' rmarkdown::draft("slide_deck.Rmd", template = "beamer_orange", package = "uiucthemes")
#' #'
#' #' # Compile the document
#' #' rmarkdown::render("slide_deck/slide_deck.Rmd")
#' #' }
#' beamer_orange <- function(toc = FALSE,
#'                           slide_level = 3,
#'                           incremental = FALSE,
#'                           fig_width = 10,
#'                           fig_height = 7,
#'                           fig_crop = TRUE,
#'                           fig_caption = TRUE,
#'                           dev = 'pdf',
#'                           df_print = "default",
#'                           fonttheme = "default",
#'                           highlight = "default",
#'                           keep_tex = FALSE,
#'                           latex_engine = "pdflatex",
#'                           citation_package = c("none", "natbib", "biblatex"),
#'                           includes = NULL,
#'                           md_extensions = NULL,
#'                           pandoc_args = NULL){
#' 
#'   template <- find_resource("beamer_orange", "template.tex")
#' 
#'   load_resources_if_missing("beamer_orange", c("ilogo.png"))
#' 
#'   rmarkdown::beamer_presentation(template = template,
#'                                  toc = toc,
#'                                  slide_level = slide_level,
#'                                  incremental = incremental,
#'                                  fig_width = fig_width,
#'                                  fig_height = fig_height,
#'                                  fig_crop = fig_crop,
#'                                  fig_caption = fig_caption,
#'                                  dev = dev,
#'                                  df_print = df_print,
#'                                  fonttheme = fonttheme,
#'                                  highlight = highlight,
#'                                  keep_tex = keep_tex,
#'                                  latex_engine = latex_engine,
#'                                  citation_package = citation_package,
#'                                  includes = includes,
#'                                  md_extensions = md_extensions,
#'                                  pandoc_args = pandoc_args)
#' 
#' }
#' 
#' 
#' #' Beamer Illinois Market Information Lab Presentation Template for RMarkdown
#' #'
#' #' Generates from an RMarkdown file a Beamer presentation with "marketlab" (UIUC)
#' #' colors and identity standards with a focus on "Orange" and "White".
#' #' @inheritParams rmarkdown::beamer_presentation
#' #' @return A modified \code{beamer_presentation} based on the "marketlab" (UIUC)
#' #'  Beamer themed template.
#' #' @export
#' #' @author
#' #' RStudio RMarkdown Team (Everything), JJB (Theme hook), Jose Luis Rodriguez (Beamer Marketlab Theme)
#' #' @examples
#' #' \dontrun{
#' #' # Generate slide deck from beamer template
#' #' rmarkdown::draft("slide_deck.Rmd", template = "beamer_mil", package = "uiucthemes")
#' #'
#' #' # Compile the document
#' #' rmarkdown::render("slide_deck/slide_deck.Rmd")
#' #' }
#' beamer_mil <- function(toc = FALSE,
#'                        slide_level = 3,
#'                        incremental = FALSE,
#'                        fig_width = 10,
#'                        fig_height = 7,
#'                        fig_crop = TRUE,
#'                        fig_caption = TRUE,
#'                        dev = 'pdf',
#'                        df_print = "default",
#'                        fonttheme = "default",
#'                        highlight = "default",
#'                        keep_tex = FALSE,
#'                        latex_engine = "pdflatex",
#'                        citation_package = c("none", "natbib", "biblatex"),
#'                        includes = NULL,
#'                        md_extensions = NULL,
#'                        pandoc_args = NULL){
#' 
#'   template <- find_resource("beamer_mil", "template.tex")
#' 
#'   load_resources_if_missing("beamer_mil", c("ilogo.png"))
#' 
#'   rmarkdown::beamer_presentation(template = template,
#'                                  toc = toc,
#'                                  slide_level = slide_level,
#'                                  incremental = incremental,
#'                                  fig_width = fig_width,
#'                                  fig_height = fig_height,
#'                                  fig_crop = fig_crop,
#'                                  fig_caption = fig_caption,
#'                                  dev = dev,
#'                                  df_print = df_print,
#'                                  fonttheme = fonttheme,
#'                                  highlight = highlight,
#'                                  keep_tex = keep_tex,
#'                                  latex_engine = latex_engine,
#'                                  citation_package = citation_package,
#'                                  includes = includes,
#'                                  md_extensions = md_extensions,
#'                                  pandoc_args = pandoc_args)
#' 
#' }


