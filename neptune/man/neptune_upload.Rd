\name{neptune_upload}
\alias{neptune_upload}
\title{
Uploads provided file under specified field path
}
\description{
Uploads provided file under specified field path
}
\usage{
neptune_upload(x, value)
}
\arguments{
  \item{x}{
Neptune handler
}
  \item{value}{
string - Path to the file to be uploaded
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
neptune_upload(run['model'], "model.RData")
}
}
\keyword{interface}
