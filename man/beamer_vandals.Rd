% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/beamer_templates.R
\name{beamer_vandals}
\alias{beamer_vandals}
\title{"Idaho" (UofI) Themed Beamer Presentation Template for RMarkdown}
\usage{
beamer_vandals(toc = FALSE, slide_level = 3, incremental = FALSE,
  fig_width = 10, fig_height = 7, fig_crop = TRUE,
  fig_caption = TRUE, dev = "pdf", df_print = "default",
  fonttheme = "default", highlight = "default", keep_tex = FALSE,
  latex_engine = "pdflatex", citation_package = c("default", "natbib",
  "biblatex"), includes = NULL, md_extensions = NULL,
  pandoc_args = NULL)
}
\arguments{
\item{toc}{\code{TRUE} to include a table of contents in the output (only
level 1 headers will be included in the table of contents).}

\item{slide_level}{The heading level which defines individual slides. By
default this is the highest header level in the hierarchy that is followed
immediately by content, and not another header, somewhere in the document.
This default can be overridden by specifying an explicit
\code{slide_level}.}

\item{incremental}{\code{TRUE} to render slide bullets incrementally. Note
that if you want to reverse the default incremental behavior for an
individual bullet you can precede it with \code{>}. For example:
\emph{\code{> - Bullet Text}}}

\item{fig_width}{Default width (in inches) for figures}

\item{fig_height}{Default width (in inches) for figures}

\item{fig_crop}{\code{TRUE} to automatically apply the \code{pdfcrop} utility
(if available) to pdf figures}

\item{fig_caption}{\code{TRUE} to render figures with captions}

\item{dev}{Graphics device to use for figure output (defaults to pdf)}

\item{df_print}{Method to be used for printing data frames. Valid values
include "default", "kable", "tibble", and "paged". The "default" method uses
\code{print.data.frame}. The "kable" method uses the
\code{\link[knitr:kable]{knitr::kable}} function. The "tibble" method uses
the \pkg{tibble} package to print a summary of the data frame. The "paged"
method creates a paginated HTML table (note that this method is only valid
for formats that produce HTML). In addition
to the named methods you can also pass an arbitrary function to be used
for printing data frames. You can disable the df_print behavior entirely
by setting the option \code{rmarkdown.df_print} to \code{FALSE}.}

\item{fonttheme}{Beamer font theme (e.g. "structurebold").}

\item{highlight}{Syntax highlighting style. Supported styles include
"default", "tango", "pygments", "kate", "monochrome", "espresso",
"zenburn", and "haddock". Pass \code{NULL} to prevent syntax highlighting.}

\item{keep_tex}{Keep the intermediate tex file used in the conversion to PDF}

\item{latex_engine}{LaTeX engine for producing PDF output. Options are
"pdflatex", "lualatex", and "xelatex".}

\item{citation_package}{The LaTeX package to process citations, \code{natbib}
or \code{biblatex}. Use \code{none} if neither package is to be used.}

\item{includes}{Named list of additional content to include within the
document (typically created using the \code{\link{includes}} function).}

\item{md_extensions}{Markdown extensions to be added or removed from the
default definition or R Markdown. See the \code{\link{rmarkdown_format}} for
additional details.}

\item{pandoc_args}{Additional command line options to pass to pandoc}
}
\value{
A modified \code{beamer_presentation} based on the "vandals" (UIUC)
Beamer themed template.
}
\description{
Generates from an RMarkdown file a Beamer presentation with "vandals" (UIUC)
colors and identity standards.
}
\examples{
\dontrun{
# Generate slide deck from beamer template
rmarkdown::draft("slide_deck.Rmd", template = "beamer_vandals", package = "uiucthemes")

# Compile the document
rmarkdown::render("slide_deck/slide_deck.Rmd")
}
}
\author{
RStudio RMarkdown Team (Everything) & JJB (Theme hook + Beamer Theme)
}
