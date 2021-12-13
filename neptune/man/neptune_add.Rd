\name{neptune_add}
\alias{neptune_add}
\title{
Adds the provided tag or tags to the run's tags.
}
\description{
Adds the provided tag or tags to the run's tags.
}
\usage{
neptune_add(x, value)
}
\arguments{
  \item{x}{Neptune handler, for which we want to add tags eg. run['Sys/tags']}
  \item{value}{string or list of strings - Tag or tags to be added. }
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
neptune_add(run['Sys/tags'], 'some_tag')
}
}
\keyword{interface}
