\name{neptune_remove}
\alias{neptune_remove}
\title{
Removes the provided tag or tags from the set.
}
\description{
Removes the provided tag or tags from the set.
}
\usage{
neptune_remove(x, value)
}
\arguments{
  \item{x}{Neptune handler, for which we want to remove tags eg. run['Sys/tags']}
  \item{value}{string or list of strings - Tag or tags to be removed. }
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
neptune_remove(run['Sys/tags'], 'some_tag')
}
}
\keyword{interface}
