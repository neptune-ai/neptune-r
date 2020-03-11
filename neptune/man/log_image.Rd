\name{log_image}

\alias{log_image}

\title{
Log image to Neptune experiment
}

\description{
It logs image to a given image channel of Neptune Experiment.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
log_image(name = 'image_channel', filename)
}

\arguments{
\item{name}{string, a name of the image channel in Neptune 'image_channel' by default}
\item{filename}{string, filename of the image that you want to log to Neptune}
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
create_experiment(name = 'my first experiment')
log_image(name = 'performance charts', filename = 'roc_auc.png')
log_image(name = 'performance charts', filename = 'confusion_matrix.png')
log_image(name = 'prediction charts', filename = 'example_predictions.png')
stop_experiment()
# link to a neptune experiment
}

\keyword{interface}


