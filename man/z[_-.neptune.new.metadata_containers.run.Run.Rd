\name{[<-.neptune.new.metadata_containers.run.Run}
\alias{[<-.neptune.new.metadata_containers.run.Run}
\title{
Assigns the provided value to the field.
}
\description{
Assigns the provided value to the field.
}
\arguments{
  \item{x}{
  Neptune Run object
}
  \item{i}{
  string, name of the field to set
}
  \item{value}{
  value which is assigned to field
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
# We are using api token for an anonymous user neptuner. For your projects use your private token.
run <- neptune_init(api_token = 'ANONYMOUS',
                    project = "common-r/quickstarts")
run['epochs'] <- 100
}
}
\keyword{interface}
