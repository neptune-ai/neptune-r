\name{neptune_fetch_hash}
\alias{neptune_fetch_hash}
\title{
  Fetches the Hash of the artifact from Neptune servers.
}
\description{
  Fetches the Hash of the artifact from Neptune servers.
}
\usage{
  neptune_fetch_hash(x)
}
\arguments{
  \item{x}{Field}
}
\value{
  Hash of a Neptune artifact as a character.
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
    neptune_fetch_hash(run['artifacts/images'])
  }
}
\keyword{interface}
