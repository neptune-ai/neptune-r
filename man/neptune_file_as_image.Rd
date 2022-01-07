\name{neptune_file_as_image}
\alias{neptune_file_as_image}
\title{
  Static method for converting image objects or image-like objects to an image File value object.
}
\description{
  Static method for converting image objects or image-like objects to an image File value object. This way you can upload ggplot2 objects, matrices, as static images.
}
\usage{
neptune_file_as_image(x, ...)
}
\arguments{
  \item{x}{
In docs there is Image-like object to be converted. Supported are ggplot2 objects, matrices, as static images.
R matrices must be converted to numpy arrays via reticulate::np_array
}
  \item{...}{Other arguments passed on to the ggsave function}
}
\value{
None
}
\author{
Authors:
\itemize{
  \item Mateusz Dominiak
  \item Maintainer: Neptune DevTeam Dev\email{backend@neptune.ai}
}
}
\seealso{
Useful links:
\itemize{
  \item \url{https://neptune.ai/}
  \item Documentation \url{https://docs.neptune.ai/}
  \item Report bugs at \url{https://github.com/neptune-ai/neptune-r/issues}
}
}
\examples{
\dontrun{
# We are using api token for an anonymous user neptuner. For your projects use your private token.
run <- neptune_init(api_token = 'ANONYMOUS',
                    project = "common-r/quickstarts")
image <- matrix(runif(16*16), nrow = 16)
neptune_log(run['test/sample_images'], neptune_file_as_image(reticulate::np_array(image)))
}
}
\keyword{interface}
