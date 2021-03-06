% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/objects.R
\name{GetImage}
\alias{GetImage}
\alias{GetImage.Seurat}
\alias{GetImage.VisiumV1}
\title{Get image data}
\usage{
GetImage(object, mode = c("grob", "raster", "plotly", "raw"), ...)

\method{GetImage}{Seurat}(
  object,
  mode = c("grob", "raster", "plotly", "raw"),
  image = NULL,
  ...
)

\method{GetImage}{VisiumV1}(object, mode = c("grob", "raster", "plotly", "raw"), ...)
}
\arguments{
\item{object}{An object}

\item{mode}{How to return the image; should accept one of 'grob', 'raster',
'plotly', or 'raw'}

\item{...}{Arguments passed to other methods}

\item{image}{Name of \code{SpatialImage} object to pull image data for; if
\code{NULL}, will attempt to select an image automatically}
}
\value{
Image data, varying depending on the value of \code{mode}:
\describe{
 \item{'grob'}{An object representing image data inheriting from \code{grob} objects (eg. \code{rastergrob})}
 \item{'raster'}{An object of class \code{raster}}
 \item{'plotly'}{A list with image data suitable for Plotly rendering, see \code{\link[plotly]{layout}} for more details}
 \item{'raw'}{The raw image data as stored in the object}
}
}
\description{
Get image data
}
\seealso{
\code{\link[plotly]{layout}}
}
