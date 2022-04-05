\name{[.neptune.new.metadata_containers.run.Run}
\alias{[.neptune.new.metadata_containers.run.Run}
\title{
Field lookup
}
\description{
Field lookup.
You can access any run's field through a named-list-like field lookup run[field_path].
As well as fetch already tracked metadata - fetching parameters when resuming a run or downloading metadata for a custom analysis using functions like neptune_fetch
}
\arguments{
  \item{x}{
  Neptune Run object
}
  \item{i}{
  string, name of the field to set
}
}
\value{
Field
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
run['epochs']
}
}
\keyword{interface}
