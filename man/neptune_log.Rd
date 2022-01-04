\name{neptune_log}
\alias{neptune_log}
\title{
Logs the provided number or a collection of numbers.
}
\description{
Logs the provided number or a collection of numbers.
Available for following field types (https://docs.neptune.ai/api-reference/field-types):
            * `FloatSeries`
            * `StringSeries`
            * `FileSeries`
}
\usage{
neptune_log(x, value, step=NULL, timestamp=NULL, wait=FALSE, ...)
}
\arguments{
  \item{x}{Field, for which we want to log value}
  \item{value}{Value or collection of values to be added to the field.}
  \item{step}{(numeric or integer) - Index of the log entry being appended. Must be strictly increasing.}
  \item{timestamp}{(numeric or integer) - Time index of the log entry being appended in form of Unix time. If NULL current time will be used as a timestamp.}
  \item{wait}{logical - If TRUE the client will wait to send all tracked metadata to the server before making the assignment. This makes the call synchronous.}
  \item{...}{Other arguments passed on to the ggsave function in case of logging a ggplot2 object.}
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
neptune_log(run['loss'], 0.1)
}
}
\keyword{interface}
