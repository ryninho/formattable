% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formattable.R
\name{formattable.numeric}
\alias{formattable.numeric}
\title{Create a formattable numeric vector}
\usage{
\method{formattable}{numeric}(x, ..., formatter = "formatC", preproc = NULL,
  postproc = NULL)
}
\arguments{
\item{x}{a numeric vector.}

\item{...}{arguments to be passed to \code{formatter}.}

\item{formatter}{formatting function, \link{formatC} in default.}

\item{preproc}{pre-processor function that prepares \code{x} for
formatting function.}

\item{postproc}{post-processor function that transforms formatted
output for printing.}
}
\value{
a \code{formattable} numeric vector.
}
\description{
Create a formattable numeric vector
}
\examples{
formattable(rnorm(10), format = "f", digits = 1)
formattable(rnorm(10), format = "f",
  flag="+", digits = 1)
formattable(1:10,
  postproc = function(str, x) paste0(str, "px"))
formattable(1:10,
  postproc = function(str, x)
    paste(str, ifelse(x <= 1, "unit", "units")))
}

