\name{set_neptune_token}

\alias{set_neptune_token}

\title{
Set 'Neptune' API token
}

\description{
It sets your 'Neptune' API token to the 'NEPTUNE_API_TOKEN' environment variable,
so that 'Neptune' knows who are you.
'Neptune' is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
set_neptune_token(token)
}

\arguments{
\item{token}{string, your Neptune API token that you can copy from your Neptune account}
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
set_neptune_token(token = 'ANONYMOUS')
init_neptune(project_name = 'shared/r-integration')

# Start logging
create_experiment(name = 'my first experiment')
log_metric('accuracy', 0.92)

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}
}

\keyword{interface}
