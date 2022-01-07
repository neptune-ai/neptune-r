\name{neptune_wait}
\alias{neptune_wait}
\title{
  Wait for all the tracking calls to finish.
}
\description{
  Wait for all the tracking calls to finish. In asynchronous connection mode data (default one) is synchronized
  with the Neptune servers in the background and each call to upload, log etc. is not immediately executed. 
  Wait delays the code execution until all the calls are done.
}
\usage{
  neptune_wait(run, disk_only=FALSE)
}
\arguments{
  \item{run}{
    Neptune run object.
  }
  \item{disk_only}{
  logical - If TRUE the process will only wait for data to be saved locally from memory, but will not wait for them to reach Neptune servers.
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
    neptune_wait(run)
  }
}
\keyword{interface}
