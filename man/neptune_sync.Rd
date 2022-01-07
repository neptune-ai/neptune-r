\name{neptune_sync}
\alias{neptune_sync}
\title{
  Synchronizes the run with with Neptune servers.
}
\description{
  Synchronizes the run with Neptune servers.
}
\usage{
neptune_sync(run, wait=TRUE)
}
\arguments{
  \item{run}{
Neptune run object.
  }
  \item{wait}{
    logical - If TRUE the client will first wait to send all tracked metadata to the server. This makes the call synchronous, see Connection modes guide.
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
run['lr'] <- 0.001
neptune_sync(run)
}
}
\keyword{interface}
