\name{neptune_download_last}
\alias{neptune_download_last}
\title{
  Downloads the last File stored in the series from Neptune servers and save it locally.
}
\description{
  Downloads the last File stored in the series from Neptune servers and save it locally.
}
\usage{
  neptune_download_last(x, destination=NULL)
}
\arguments{
  \item{x}{Field}
  \item{destination}{character - The directory where the file will be downloaded. If NULL is passed, the file will be downloaded to the current working directory.
    If destination is a directory, the file will be downloaded to the specified directory with a filename composed from field name and extension (if present).
    If destination is a path to a file, the file will be downloaded under the specified name.}
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
    df <- neptune_download_last(run['train/predictions'])
  }
}
\keyword{interface}
