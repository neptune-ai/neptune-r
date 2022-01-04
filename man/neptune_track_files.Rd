\name{neptune_track_files}
\alias{neptune_track_files}
\title{
  Saves the artifact metadata.
}
\description{
  Saves the artifact metadata: version (hash), location (path), size, folder structure, and contents to Neptune.  Works for files, folders or S3-compatible storage. 
}
\usage{
  neptune_track_files(x, path, destination=NULL, wait=FALSE)
}
\arguments{
  \item{x}{Field}
  \item{path}{character - File path or S3-compatible path to the file or folder that you want to track.}
  \item{destination}{character - location inside Neptune artifact namespace where you want to log the metadata.}
  \item{wait}{logical - - If TRUE the client will wait to send all tracked metadata to the server before making the assignment. This makes the call synchronous.}
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
  neptune_track_files(run['artifacts/images'], 'datasets/train/images')
}
}
\keyword{interface}
