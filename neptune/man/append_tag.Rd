
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
append_tag('resnet50')
}

\arguments{
\item{tag}{string or array of strings, a tag or array of tags that you want to append to an experiment}
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
create_experiment(name = 'my first experiment')
append_tag('resnet50')
append_tag(c('no-augmentation', 'focal-loss'))
stop_experiment()
}

\keyword{interface}
