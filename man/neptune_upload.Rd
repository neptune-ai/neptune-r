\name{neptune_upload}
\alias{neptune_upload}
\title{
Uploads provided file under specified field path
}
\description{
Uploads provided file under specified field path
}
\usage{
neptune_upload(x, value, wait=FALSE, ...)
}
\arguments{
  \item{x}{
Field
}
  \item{value}{
string - Path to the file to be uploaded or File value object eg. object returned by neptune_file_as_html call
}
\item{wait}{logical - If TRUE the client will wait to send all tracked metadata to the server before making the assignment. This makes the call synchronous.}
\item{...}{Other arguments passed on to the ggsave function in case of uploading a ggplot2 object.}
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
neptune_upload(run['model'], "model.RData")
}
}
\keyword{interface}
