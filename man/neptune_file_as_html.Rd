\name{neptune_file_as_html}
\alias{neptune_file_as_html}
\title{
  Converts an object to an HTML File value object.
}
\description{
  Converts an object to an HTML File value object. This way you can upload ggplot2, Plotly interactive charts or upload directly DataFrame objects to explore them in Neptune UI.
}
\usage{
neptune_file_as_html(x)
}
\arguments{
  \item{x}{
  An object to be converted. Supported are ggplot2, Plotly and DataFrame objects.
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
df <- data.frame(prediction = runif(10), index = 1:10)
neptune_upload(run['evaluation/predictions'], neptune_file_as_html(df))
}
}
\keyword{interface}
