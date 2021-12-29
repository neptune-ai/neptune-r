\name{neptune_stop}
\alias{neptune_stop}
\title{
  Stop neptune run.
}
\description{
  Stop neptune run.
}
\usage{
  neptune_stop(run, seconds=NULL)
}
\arguments{
  \item{run}{
    Neptune run object.
  }
  \item{seconds}{
    (integer or numeric, optional, default is NULL) - The method will wait for the specified time for all tracking calls to finish, before stopping the connection. If NULL will wait for all tracking calls to finish.

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
neptune_stop(run)
}
}
\keyword{interface}
