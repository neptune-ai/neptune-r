\name{neptune_log}
\alias{neptune_log}
\title{
Logs the provided number or a collection of numbers.
}
\description{
Logs the provided number or a collection of numbers.
}
\usage{
neptune_log(x, value, step=NULL, timestamp=NULL, wait=FALSE)
}
\arguments{
  \item{x}{Neptune handler, for which we want to log value}
  \item{value}{(numeric or integer, or vector of numerics or integers) - The value to be logged or collections of values to be logged.}
  \item{step}{(numeric or integer) - Index of the log entry being appended. Must be strictly increasing.}
  \item{timestamp}{(numeric or integer) - Time index of the log entry being appended in form of Unix time. If None current time (time.time()) will be used as a timestamp.}
  \item{wait}{bool - If True the client will wait to send all tracked metadata to the server before making the assignment. This makes the call synchronous.}
}
\value{
None
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
neptune_log(run['loss'], 0.1)
}
}
\keyword{interface}
