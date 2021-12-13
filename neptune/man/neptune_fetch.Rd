\name{neptune_fetch}
\alias{neptune_fetch}
\title{
Fetches field value from Neptune servers. You should only use .fetch() to copy the artifact.
}
\description{
Fetches field value from Neptune servers. You should only use .fetch() to copy the artifact.
}
\usage{
neptune_fetch(x)
}
\arguments{
  \item{x}{Neptune handler, for which we want to fetch the value}
}
\value{
Artifact object
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
neptune_assign(run['paramaters'], list(epochs=100, lr=0.01))
neptune_fetch(run['paramaters'])
}
}
\keyword{interface}
