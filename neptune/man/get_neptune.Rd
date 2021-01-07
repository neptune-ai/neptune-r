\name{get_neptune}

\alias{get_neptune}

\title{
Get 'Neptune' experiment object
}

\description{
It gets 'Neptune' experiment object so that it can be used directly.
'Neptune' is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
get_neptune()
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
init_neptune(api_token = 'ANONYMOUS',
             project_name = 'shared/r-integration')

# Fetch Neptune logger object
npt = get_neptune()

# Create experiment
npt$create_experiment(name = 'my first experiment')

# Start logging
npt$log_metric('auc', 0.45)

# Stop logging
npt$stop()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}
}

\keyword{interface}
