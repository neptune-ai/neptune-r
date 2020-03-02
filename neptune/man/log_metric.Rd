\name{log_metric}

\alias{log_metric}

\title{
Log metric to Neptune experiment
}

\description{
It logs metric like accuracy or AUC to Neptune Experiment.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
log_metric('accuracy', 0.92)
}

\arguments{
\item{metric}{string, name of the metric that you want to log to Neptune.
You can log more than one value to the same metric. If you do that, a chart will be created.}
\item{value}{float, a metric value that you want to log to Neptune}
}

\author{
\strong{Maintainer}: Jakub Czakon \email{jakub.czakon@neptune.ai}

Authors:
\itemize{
  \item Mateusz Dominiak \email{XXX@YYY.com}
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
set_neptune_token(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vdWkubmVwdHVuZS5haSIsImFwaV9rZXkiOiJiNzA2YmM4Zi03NmY5LTRjMmUtOTM5ZC00YmEwMzZmOTMyZTQifQ==')
init_neptune(project_name = 'shared/r-integration')
create_experiment(name = 'my first experiment'
                  params = list(metric='Accuracy', model='rf', 'cvFolds'=2)
)
log_metric('accuracy', 0.92)
log_metric('accuracy', 0.52)
log_metric('auc', 0.87)
stop_experiment()
# link to a neptune experiment
}

\keyword{interface}
