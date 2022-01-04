\name{neptune_assign}
\alias{neptune_assign}
\title{
Assigns the provided value to the field.
}
\description{
Assigns the provided value to the field.
}
\usage{
neptune_assign(x, value, wait=FALSE)
}
\arguments{
  \item{x}{Field or run, for which we want to assign the value}
  \item{value}{Value to be stored in a field.}
  \item{wait}{logical - If TRUE the client will wait to send all tracked metadata to the server. This makes the call synchronous.}
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
neptune_assign(run['parameters'], list(epochs=100, lr=0.01))
}
}
\keyword{interface}
