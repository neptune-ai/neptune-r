
\name{append_tag}

\alias{append_tag}

\title{
Append tag to Neptune experiment
}

\description{
Append a tag or array of tags to a Neptune experiment.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
append_tag(tag)
}

\arguments{
\item{tag}{string or array of strings, a tag or array of tags that you want to append to an experiment}
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
init_neptune(api_token = 'ANONYMOUS',
             project_name = 'shared/r-integration',
             python='miniconda',
             python_path='r-reticulate')

# Start logging
create_experiment(name = 'my first experiment')
append_tag('resnet50')
append_tag(c('no-augmentation', 'focal-loss'))

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}

\keyword{interface}
