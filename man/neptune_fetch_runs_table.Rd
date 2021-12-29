\name{neptune_fetch_runs_table}
\alias{neptune_fetch_runs_table}
\title{
  Retrieve runs matching the specified criteria.
}
\description{
Retrieve runs matching the specified criteria.
All parameters are optional, each of them specifies a single criterion. Only runs matching all of the criteria will be returned.
Due to technical limitation only first 10,000 runs matching the criteria are fetched.
}
\usage{
neptune_fetch_runs_table(project, id = NULL, state = NULL, owner = NULL, tag = NULL)
}
\arguments{
  \item{project}{
string - project name
}
  \item{id}{
(string or vector of strings, optional, default is NULL) - A run's id like "SAN-1" or list of ids like c("SAN-1", "SAN-2").
Matching any element of the list is sufficient to pass the criterion.
}
  \item{state}{
(string or vector of strings, optional, default is NULL) - A run's state like "active" or list of states like c("inactive", "active"). Possible values: "inactive", "active".
Matching any element of the list is sufficient to pass the criterion.}
  \item{owner}{
(string or vector of strings, optional, default is NULL) - Username of the run's owner (the user who created the tracked run is an owner) like "josh" or a list of owners like c("frederic", "josh").
Matching any element of the list is sufficient to pass the criterion.}
  \item{tag}{
(string or vector of strings, optional, default is NULL) - An experiment tag like "lightGBM" or list of tags like c("pytorch", "cycleLR").
Only experiments that have all specified tags will match this criterion.}
}
\value{
RunsTable data in the form of DataFrame.
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
run <- neptune_init(api_token = 'ANONYMOUS',
                    project = "common-r/quickstarts")
df <- neptune_fetch_runs("common-r/quickstarts")
}
}
\keyword{interface}
