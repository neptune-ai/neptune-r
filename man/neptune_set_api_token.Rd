\name{neptune_set_api_token}
\alias{neptune_set_api_token}
\title{
  Sets NEPTUNE_API_TOKEN environment variables
}
\description{
  Sets NEPTUNE_API_TOKEN environment variables. It is used as a default api_token value by neptune_init.
}
\usage{
neptune_set_api_token(token)
}
\arguments{
  \item{token}{
string - Your Neptune API token
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
neptune_set_api_token("ANONYMOUS")
}
\keyword{interface}
