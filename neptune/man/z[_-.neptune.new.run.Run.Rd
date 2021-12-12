\name{[<-.neptune.new.run.Run}
\alias{[<-.neptune.new.run.Run}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  todo
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
[<-.neptune.new.run.Run(x, i, value)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{i}{
%%     ~~Describe \code{i} here~~
}
  \item{value}{
%%     ~~Describe \code{value} here~~
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
Authors:
\itemize{
  \item Mateusz Dominiak
  \item Maintainer: Jakub Czakon \email{jakub.czakon@neptune.ai}
}
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
function (x, i, value)
{
    if (is.null(value)) {
        reticulate::py_del_item(x = x, name = i)
    }
    else {
        reticulate::py_set_item(x = x, name = i, value = value)
    }
    x
  }
}
\keyword{interface}
