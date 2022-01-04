\name{neptune_fetch_last}
\alias{neptune_fetch_last}
\title{
  Fetches last value stored in the series from Neptune servers.
}
\description{
  Fetches last value stored in the series from Neptune servers.
}
\usage{
  neptune_fetch_last(x)
}
\arguments{
  \item{x}{Field}
}
\value{
  Last float value logged.
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
    last_auc_value <- neptune_fetch_last(run['metrics/auc'])
  }
}
\keyword{interface}
