\name{neptune_fetch}
\alias{neptune_fetch}
\title{
Fetch values of all non-File Atom fields as a named list.
}
\description{
Fetch values of all non-File Atom fields as a named list.
The result will preserve the hierarchical structure of the run's metadata, but will contain only non-File Atom fields.
You can use this method to quickly retrieve previous run's parameters.
}
\usage{
neptune_fetch(x)
}
\arguments{
  \item{x}{Field or run, for which we want to fetch the value}
}
\value{
named list containing all non-File Atom fields values.
}
\author{
Authors:
\itemize{
  \item Mateusz Dominiak
  \item Maintainer: Neptune DevTeam Dev\email{backend@neptune.ai}
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
resumed_run <- neptune_init(api_token = 'ANONYMOUS',
                    project = "common-r/quickstarts",
                    run="HEL-3")
params <- neptune_fetch(resumed_run['model/paramaters'])
run_data <- neptune_fetch(resumed_run)
print(run_data)
# this will print out all Atom attributes stored in run as a dict
}
}
\keyword{interface}
