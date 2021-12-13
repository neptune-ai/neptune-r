\name{[.neptune.new.run.Run}
\alias{[.neptune.new.run.Run}
\title{
Get metadata Neptune handler.
}
\description{
Get metadata Neptune handler.
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
Neptune handler
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
# We are using api token for an anonymous user neptuner. For your projects use your private token.
run <- neptune_init(api_token = 'ANONYMOUS',
                    project = 'shared/r-integration')
run['epochs'] <- 100
run['epochs']
}
}
\keyword{interface}
