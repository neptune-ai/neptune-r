\name{neptune_fetch_values}
\alias{neptune_fetch_values}
\title{
  Fetches all values stored in the series from Neptune servers.
}
\description{
  Fetches all values stored in the series from Neptune servers.
}
\usage{
  neptune_fetch_values(x, include_timestamp=TRUE)
}
\arguments{
  \item{x}{Neptune handler}
  \item{include_timestamp}{bool - Whether to include the fetched data should include the timestamp field.}
}
\value{
  data.frame containing all the values and their indexes stored in the series field.
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
    run <- neptune_init(api_token = 'ANONYMOUS',
                        project = 'shared/r-integration')
    df <- neptune_fetch_values(run['metrics/auc'])
  }
}
\keyword{interface}
