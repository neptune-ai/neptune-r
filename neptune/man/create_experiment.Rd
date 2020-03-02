\name{create_experiment}

\alias{create_experiment}

\title{
Create Neptune experiment
}

\description{
It create a Neptune experiment to which you can log hyperparameters, metrics, images, or other artifacts.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
create_experiment(name = 'my first experiment',
                  params = list(metric='Accuracy', model='rf', 'cvFolds'=2)
)
}

\arguments{
\item{name}{string, a name of Neptune experiment, by default set to 'default'}
\item{params}{list, named list of name-value pairs used to define experiment parameters}
\item{params}{tags, array of tags used to organize experiments. Good examples are 'preprocessin-v1' or 'resnet50'}
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
init_neptune(project_name = 'HappyUser/GreatProject')
create_experiment(name = 'my-first-experiment',
                  params = list(metric='Accuracy', model='rf', 'cvFolds'=2),
)
log_metric('accuracy', 0.92)
stop_experiment()
}

\keyword{interface}

