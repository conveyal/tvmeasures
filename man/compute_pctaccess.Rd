% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessdiff.R
\name{compute_pctaccess}
\alias{compute_pctaccess}
\title{Compute nth percentile accessibility}
\usage{
compute_pctaccess(tiff, weight_tiff = NULL, ...)
}
\arguments{
\item{tiff}{A Conveyal tiff with accessibility scores.}

\item{weight_tiff}{A Conveyal raster layer containing origin-side
opportunities to use for weighting.}

\item{...}{Arguments passed on to \code{Hmisc::wtd.quantile}
\describe{
  \item{x}{
a numeric vector (may be a character or \code{category} or \code{factor} vector
for \code{wtd.table})
}
  \item{weights}{
a numeric vector of weights
}
  \item{normwt}{
specify \code{normwt=TRUE} to make \code{weights} sum to
\code{length(x)} after deletion of \code{NA}s.  If \code{weights} are
frequency weights, then \code{normwt} should be \code{FALSE}, and if
\code{weights} are normalization (aka reliability) weights, then
\code{normwt} should be \code{TRUE}. In the case of the former, no check
is made that \code{weights} are valid frequencies. 
}
  \item{na.rm}{
set to \code{FALSE} to suppress checking for NAs
}
  \item{probs}{
a vector of quantiles to compute.  Default is 0 (min), .25, .5, .75, 1
(max).
}
  \item{type}{
For \code{wtd.quantile}, \code{type} defaults to \code{quantile} to use the same
interpolated order statistic method as \code{quantile}.  Set \code{type} to 
\code{"(i-1)/(n-1)"},\code{"i/(n+1)"}, or \code{"i/n"} to use the inverse of the
empirical distribution function, using, respectively, (wt - 1)/T,
wt/(T+1), or wt/T, where wt is the cumulative weight and T is the
total weight (usually total sample size).  These three values of
\code{type} are the possibilities for \code{wtd.Ecdf}.  For \code{wtd.table} the
default \code{type} is \code{"list"}, meaning that the function is to return a
list containing two vectors: \code{x} is the sorted unique values of \code{x}
and \code{sum.of.weights} is the sum of weights for that \code{x}.  This is the
default so that you don't have to convert the \code{names} attribute of the
result that can be obtained with \code{type="table"} to a numeric variable
when \code{x} was originally numeric.  \code{type="table"} for \code{wtd.table}
results in an object that is the same structure as those returned from
\code{table}.  For \code{wtd.loess.noiter} the default \code{type} is \code{"all"},
indicating that the function is to return a list containing all the
original values of \code{x} (including duplicates and without sorting) and
the smoothed \code{y} values corresponding to them.  Set \code{type="ordered
all"} to sort by \code{x}, and \code{type="evaluate"} to evaluate the smooth
only at \code{evaluation} equally spaced points between the observed limits
of \code{x}.
}
}}
}
\value{
A named vector of quantile values
}
\description{
Computes the number of opportunities accessible to an arbitrary percentile of
the population.
}
\details{
Serves as a wrapper to \link[Hmisc]{wtd.quantile}
}
