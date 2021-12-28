\name{neptune_exists}
\alias{neptune_exists}
\title{
  Checks if there is any field or namespace under the specified path.
}
\description{
  Checks if there is any field or namespace under the specified path.
  Note that this method checks the local representation of the run. The field may have been created by another process (use .sync() to synchronize local representation) or the metadata may have not reached the Neptune servers so it may be impossible to fetch (use .wait() to wait for all tracking calls to finish).
}
\usage{
  neptune_exists(run, path)
}
\arguments{
  \item{run}{
    Neptune run object.
  }
  \item{path}{
    character - The path to check for the existence of a field or a namespace
  }
}
\value{
  logical - True if field exists at path
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
    # We are using api token for an anonymous user neptuner. 
    # For your projects use your private token.
    run <- neptune_init(api_token = 'ANONYMOUS',
                        project = 'shared/r-integration')
    run['lr'] <- 0.001
    neptune_exists(run, 'lr')
    neptune_exists(run, 'notlr')
  }
}
\keyword{interface}
