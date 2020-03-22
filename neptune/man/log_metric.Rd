\name{log_metric}

\alias{log_metric}

\title{
Log metric to 'Neptune' experiment
}

\description{
It logs metric like accuracy or AUC to 'Neptune' Experiment.
'Neptune' is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
log_metric(metric, value)
}

\arguments{
\item{metric}{string, name of the metric that you want to log to Neptune.
You can log more than one value to the same metric. If you do that, a chart will be created.}
\item{value}{float, a metric value that you want to log to Neptune}
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

# Start logging
create_experiment(name = 'my first experiment',
                  params = list(metric='Accuracy', model='rf', 'cvFolds'=2)
)
log_metric('accuracy', 0.92)
log_metric('accuracy', 0.52)
log_metric('auc', 0.87)

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}
}

\keyword{interface}
