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
create_experiment(name = "default",
                  params = reticulate::dict(),
                  tags =  c()
)
}

\arguments{
\item{name}{string, a name of Neptune experiment, by default set to 'default'}
\item{params}{list (or reticulate::dict), named list of name-value pairs used to define experiment parameters}
\item{tags}{tags, array of tags used to organize experiments. Good examples are 'preprocessing-v1' or 'resnet50'}
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
tryCatch(reticulate::install_miniconda(), error=function(e) print('miniconda already installed'))
set_neptune_token(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vdWkubmVwdHVuZS5haSIsImFwaV9rZXkiOiJiNzA2YmM4Zi03NmY5LTRjMmUtOTM5ZC00YmEwMzZmOTMyZTQifQ==')
init_neptune(project_name = 'shared/r-integration', python='miniconda', python_path='r-reticulate')
create_experiment(name = 'my-first-experiment',
                  params = list(metric='Accuracy', model='rf', 'cvFolds'=2)
)
log_metric('accuracy', 0.92)
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}

\keyword{interface}

