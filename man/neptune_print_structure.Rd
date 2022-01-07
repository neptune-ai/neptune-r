\name{neptune_print_structure}
\alias{neptune_print_structure}
\title{
  Pretty prints the structure of the run's metadata. Paths are ordered lexicographically and the whole structure is neatly colored.

}
\description{
Pretty prints the structure of the run's metadata. Paths are ordered lexicographically and the whole structure is neatly colored.

}
\usage{
neptune_print_structure(run)
}
\arguments{
  \item{run}{
Neptune run object.
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
neptune_print_structure(run)
}
}
\keyword{interface}
