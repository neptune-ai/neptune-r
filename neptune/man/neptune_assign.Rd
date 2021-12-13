\name{neptune_assign}
\alias{neptune_assign}
\title{
Assigns the provided value to the field.
}
\description{
Assigns the provided value to the field.
}
\usage{
neptune_assign(x, value)
}
\arguments{
  \item{x}{Neptune handler, for which we want to assign the value}
  \item{value}{string or Artifact  - Value to be stored in a field.}
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
neptune_assign(run['paramaters'], list(epochs=100, lr=0.01))
}
}
\keyword{interface}
