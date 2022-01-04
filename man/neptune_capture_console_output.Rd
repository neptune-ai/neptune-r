\name{neptune_capture_console_output}
\alias{neptune_capture_console_output}
\title{
  Overwrites default print method to allow neptune to capture output.
}
\description{
  Overwrites default print method to allow neptune to capture output. 
  The method is overwritten in global namespace. 
  Each print call is wrapped with capture.output and then forwarded to python's print method.
}
\usage{
  neptune_capture_console_output()
}
\value{
  None
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
    # We are using api token for an anonymous user neptuner. 
    # For your projects use your private token.
    run <- neptune_init(api_token = 'ANONYMOUS',
                        project = "common-r/quickstarts")
    neptune_capture_console_output(run)
    print("Starting training...")
  }
}
\keyword{interface}
