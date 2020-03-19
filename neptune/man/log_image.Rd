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

# We are using api token for an anonymous user neptuner. For other projects use your private api token.
init_neptune(api_token = 'ANONYMOUS', project_name = 'shared/r-integration', python='miniconda', python_path='r-reticulate')

# Start logging
create_experiment(name = 'my first experiment')


png(filename = "testPlot.png", width = 480, height = 480)
plot(1:10, type = 'l')
dev.off()

log_image(name = 'performance charts', filename = 'testPlot.png')

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}

\keyword{interface}


