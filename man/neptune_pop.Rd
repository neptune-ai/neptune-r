\name{neptune_pop}
\alias{neptune_pop}
\title{
  Removes the field or whole namespace stored under the path completely and all data associated with them.
}
\description{
  Removes the field or whole namespace stored under the path completely and all data associated with them.
}
\usage{
  neptune_pop(run, path, wait=TRUE)
}
\arguments{
  \item{run}{
    Neptune run object.
  }
  \item{path}{
    character - Path of the field or namespace to be removed.
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
    # We are using api token for an anonymous user neptuner. 
    # For your projects use your private token.
    run <- neptune_init(api_token = 'ANONYMOUS',
                        project = "common-r/quickstarts")
    run['lr'] <- 0.001
    neptune_pop(run, 'lr')
  }
}
\keyword{interface}
