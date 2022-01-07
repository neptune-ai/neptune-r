\name{neptune_fetch_files_list}
\alias{neptune_fetch_files_list}
\title{
  Fetches a list of artifact files from the Neptune servers.
}
\description{
  Fetches a list of artifact files from the Neptune servers.
}
\usage{
  neptune_fetch_files_list(x)
}
\arguments{
  \item{x}{Field}
}
\value{
  List of ArtifactFileData objects for all the files referenced in the artifacts. 
  ArtifactFileDatahas the following fields that you can use:
    file_hash: str, Hash of the file
  file_path: str, URL of the file in the Neptune UI
  size: int,  Size of the file in KB
  metadata: dict, dictionary with the following keys:
    file_path: a location (path) of the file either on local storage or S3-compatible storage
  last_modified: when was the last the artifact content was changed 
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
    run <- neptune_init(project='<YOUR_WORKSPACE/YOUR_PROJECT>',
                        api_token='<YOUR_API_TOKEN>',
                        run='AR-2', # Neptune Run ID of a run with artifact
                        mode='read-only')
    artifact_list <- neptune_fetch_files_list(run['artifacts/images'])
    artifact_list[[1]]$file_hash
    artifact_list[[1]]$file_path
    artifact_list[[1]]$metadata['last_modified']
  }
}
\keyword{interface}
