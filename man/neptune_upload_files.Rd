\name{neptune_upload_files}
\alias{neptune_upload_files}
\title{
  Uploads the provided file or files and stores them inside the FileSet.
}
\description{
  Uploads the provided file or files and stores them inside the FileSet.
}
\usage{
  neptune_upload_files(x, globs, wait=FALSE)
}
\arguments{
  \item{x}{Field}
  \item{globs}{character or vector of characters - Path or paths to the files to be uploaded.}
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
    neptune_upload_files(run['artifacts/images'], "path/to/file")
  }
}
\keyword{interface}
