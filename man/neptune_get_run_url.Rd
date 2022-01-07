\name{neptune_get_run_url}
\alias{neptune_get_run_url}
\title{
  Returns a direct link to run in Neptune. It's the same link that is printed at the moment of initialization of the run.
}
\description{
  Returns a direct link to run in Neptune. It's the same link that is printed at the moment of initialization of the run.
}
\usage{
  neptune_get_run_url(run)
}
\arguments{
  \item{run}{
    Neptune run object.
  }
}
\value{
  character - URL of the run in Neptune
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
    neptune_get_run_url(run)
  }
}
\keyword{interface}
