\name{create_experiment}

\alias{create_experiment}

\title{
Create 'Neptune' experiment
}

\description{
It create a 'Neptune' experiment to which you can log hyperparameters,
metrics, images, or other artifacts.
'Neptune' is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
create_experiment(name = "default",
                  params = reticulate::dict(),
                  tags =  c(),
                  upload_source_files = c()
)
}

\arguments{
\item{name}{string, a name of Neptune experiment, by default set to 'default'}
\item{params}{list (or reticulate::dict), named list of name-value pairs.
Used to define experiment parameters}
\item{tags}{tags, array of tags used to organize experiments.
Good examples are 'preprocessing-v1' or 'resnet50'}
\item{upload_source_files}{list of file patterns, array of filepaths and file patterns that you would like to upload to Neptune.
Good examples are 'train_model.r' or '*/**.r'}
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
create_experiment(name = 'my-first-experiment',
                  params = list(metric='Accuracy', model='rf', 'cvFolds'=2)
)
log_metric('accuracy', 0.92)

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}
}

\keyword{interface}
