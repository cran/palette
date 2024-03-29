% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palette_function.R
\name{palette_function}
\alias{palette_function}
\title{Build a palette function}
\usage{
palette_function(x)
}
\arguments{
\item{x}{a palette}
}
\value{
a function which takes an integer \code{n} and returns a vector of \code{n} colors
}
\description{
Creates a palette function for use within \code{ggplot2} as an argument to \code{discrete_scale}.
If the number of colors requested is greater than the length of the palette,
the palette will be repeated. If the number of colors requested is less than the
length of the palette, the palette will be truncated. This is done explicitly, as
\code{vctrs} recycling purposefully does not recycle to partial lengths, like a vector of
size 10 to a vector of size 3 or 13.
}
\examples{
palette_function(palette(roygbiv))(10)
}
