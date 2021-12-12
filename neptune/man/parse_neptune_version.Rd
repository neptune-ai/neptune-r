\name{parse_neptune_version}
\alias{parse_neptune_version}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  todo
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
parse_neptune_version(version)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{version}{
%%     ~~Describe \code{version} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (version) 
{
    if (is.null(version) || is.na(version) || version \%in\% c("", 
        "release")) 
        return("tensorflow")
    version <- as.character(version)
    if (grepl("^.*\\.whl$", version)) 
        return(normalizePath(version))
    package <- "neptune-client"
    if (version \%in\% c("default", "")) 
        version <- default_version
    if (!grepl("[><=]", version)) 
        version <- sprintf("==\%s.*", version)
    paste0(package, version)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
