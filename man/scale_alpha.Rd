% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale-alpha.r
\name{scale_alpha}
\alias{scale_alpha}
\alias{scale_alpha_continuous}
\alias{scale_alpha_binned}
\alias{scale_alpha_discrete}
\alias{scale_alpha_ordinal}
\alias{scale_alpha_datetime}
\alias{scale_alpha_date}
\title{Alpha transparency scales}
\usage{
scale_alpha(..., range = c(0.1, 1))

scale_alpha_continuous(..., range = c(0.1, 1))

scale_alpha_binned(..., range = c(0.1, 1))

scale_alpha_discrete(...)

scale_alpha_ordinal(..., range = c(0.1, 1))
}
\arguments{
\item{...}{Other arguments passed on to \code{\link[=continuous_scale]{continuous_scale()}}, \link{binned_scale},
or \code{\link[=discrete_scale]{discrete_scale()}} as appropriate, to control name, limits,
breaks, labels and so forth.}

\item{range}{Output range of alpha values. Must lie between 0 and 1.}
}
\description{
Alpha-transparency scales are not tremendously useful, but can be a
convenient way to visually down-weight less important observations.
\code{scale_alpha} is an alias for \code{scale_alpha_continuous} since
that is the most common use of alpha, and it saves a bit of typing.
}
\examples{
p <- ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(alpha = year))

p
p + scale_alpha("cylinders")
p + scale_alpha(range = c(0.4, 0.8))
}
\seealso{
Other colour scales: \code{\link{scale_colour_brewer}},
  \code{\link{scale_colour_gradient}},
  \code{\link{scale_colour_grey}},
  \code{\link{scale_colour_hue}},
  \code{\link{scale_colour_steps}},
  \code{\link{scale_colour_viridis_d}}
}
\concept{colour scales}
