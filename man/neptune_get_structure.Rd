\name{neptune_get_structure}
\alias{neptune_get_structure}
\title{
  Returns a run's metadata structure in form of a named list.
}
\description{
Returns a run's metadata structure in form of a named list.
This method can be used to traverse the run's metadata structure programmatically when using Neptune in automated workflows.
}
\usage{
neptune_get_structure(run)
}
\arguments{
  \item{run}{
Neptune run object.
}
}
\value{
Named list containing all metadata stored for run
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
                    project = "common-r/quickstarts")
str <- neptune_get_structure(run)
}
}
\keyword{interface}
