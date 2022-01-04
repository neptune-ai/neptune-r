\name{neptune_clear}
\alias{neptune_clear}
\title{
  Removes all tags from the StringSet.
}
\description{
  Removes all tags from the StringSet.
}
\usage{
  neptune_clear(x, wait=FALSE)
}
\arguments{
  \item{x}{Field}
  \item{wait}{logical - If TRUE the client will wait to send all tracked metadata to the server before making the assignment. This makes the call synchronous.}
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
    run <- neptune_init(api_token = 'ANONYMOUS',
                        project = "common-r/quickstarts")
    neptune_clear(run['sys/tags'])
  }
}
\keyword{interface}
