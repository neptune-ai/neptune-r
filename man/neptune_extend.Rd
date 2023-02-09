\name{neptune_extend}
\alias{neptune_extend}
\title{
Extends the field with collection of values.
}
\description{
Extends the field with collection of values.
Available for following field types (https://docs.neptune.ai/api-reference/field-types):
            * `FloatSeries`
            * `StringSeries`
            * `FileSeries`
}
\usage{
neptune_extend(x, values, steps=NULL, timestamps=NULL, wait=FALSE, ...)
}
\arguments{
  \item{x}{Field, for which we want to append value}
  \item{values}{Collection of values to be added to the field.}
  \item{steps}{Collection of steps (numeric or integer) - Indexes of the log entries being extended. Must be strictly increasing.}
  \item{timestamps}{(numeric or integer) - Time indexes of the log entries being extended in form of Unix time. If NULL current time will be used as a timestamp.}
  \item{wait}{logical - If TRUE the client will wait to send all tracked metadata to the server before making the assignment. This makes the call synchronous.}
  \item{...}{Other arguments passed on to the ggsave function in case of logging a ggplot2 object.}
}
\value{
None
}
\author{
Authors:
\itemize{
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
run <- neptune_init(api_token = ANONYMOUS_API_TOKEN,
                    project = "common-r/quickstarts")
neptune_extend(run['loss'], c(0.1, 0.2, 0.3))
}
}
\keyword{interface}
