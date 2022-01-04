\name{neptune_download}
\alias{neptune_download}
\title{
Downloads all the files that are referenced in the field.
}
\description{
Downloads all the files that are referenced in the field.
}
\usage{
neptune_download(x, destination)
}
\arguments{
  \item{x}{Field for which we want to download the files}
  \item{destination}{(character - The directory where the files will be downloaded. If NULL is passed, the files will be downloaded to the current working directory.

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
# We are using api token for an anonymous user neptuner. For your projects use your private token.
run <- neptune_init(api_token = 'ANONYMOUS',
                    project = "common-r/quickstarts",
                    run='AR-2', # Neptune Run ID of a run with artifact
                    mode='read-only')
neptune_download(run['artifacts/images'], destination='datasets/train/images')
}
}
\keyword{interface}
