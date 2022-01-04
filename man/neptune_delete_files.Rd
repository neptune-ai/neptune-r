\name{neptune_delete_files}
\alias{neptune_delete_files}
\title{
  Delete the file or files specified by paths from the FileSet stored on the Neptune servers.
}
\description{
  Delete the file or files specified by paths from the FileSet stored on the Neptune servers.
}
\usage{
  neptune_delete_files(x, paths, wait=FALSE)
}
\arguments{
  \item{x}{Field}
  \item{paths}{character or vector of characters - Path or paths to files or folders to be deleted. Note that these are paths relative to the FileSet itself e.g. if the FileSet contains file example.txt, varia/notes.txt, varia/data.csv to delete whole subfolder you would pass varia as the argument.}
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
    neptune_delete_files(run['artifacts/images'], "path/to/file")
  }
}
\keyword{interface}
