\name{neptune_file_as_image}
\alias{neptune_file_as_image}
\title{
  Static method for converting image objects or image-like objects to an image File value object.
}
\description{
  Static method for converting image objects or image-like objects to an image File value object. This way you can upload Matplotlib figures, PIL images, NumPy arrays, as static images.
}
\usage{
neptune_file_as_image(x)
}
\arguments{
  \item{x}{
An object to be converted. Supported are Altair, Bokeh, Plotly, Matplotlib interactive charts, and Pandas DataFrame objects.
R matrices must be converted to numpy arrays via reticulate::np_array
R dataframes are automatically converted to Pandas
}
}
\value{
None
}
\author{
Authors:
\itemize{
  \item Mateusz Dominiak
  \item Maintainer: Jakub Czakon \email{jakub.czakon@neptune.ai}
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
                    project = 'shared/r-integration')
image <- matrix(runif(16*16), nrow = 16)
neptune_log(run['test/sample_images'], neptune_file_as_image(reticulate::np_array(image)))
}
}
\keyword{interface}
