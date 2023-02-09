\name{ANONYMOUS_API_TOKEN}
\alias{ANONYMOUS_API_TOKEN}
\title{
API token for anonymous logging.
}
\description{
You can use this value for the api_token parameter of the init methods.
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
}
}
