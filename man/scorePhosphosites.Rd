% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score_phosphosites.R
\name{scorePhosphosites}
\alias{scorePhosphosites}
\title{Match kinase PWMs to processed phosphosites}
\usage{
scorePhosphosites(
  pwms,
  sites,
  scoreType = c("lod", "percentile"),
  BPPARAM = BiocParallel::SerialParam()
)
}
\arguments{
\item{pwms}{List with kinase PWMs as returned by \link{getKinasePWM}.}

\item{sites}{A character vector with phosphosites. Check
\link{processPhosphopeptides} for the correct phosphosite format.}

\item{scoreType}{Log2-odds score or percentile rank.}

\item{BPPARAM}{A \link{BiocParallelParam} object specifying how parallelization
should be performed.}
}
\value{
A numeric matrix of size \code{length(sites)} times \code{length(pwms)}.
}
\description{
\code{scorePhosphosites} takes a list of kinase PWMs and a vector of processed
phosphosites as input and returns a matrix of match scores per PWM and site.
}
\details{
The match score is either the log2-odds score (\code{lod}) or the percentile rank
(\code{percentile}) in the background score distribution.
}
\examples{
score <- scorePhosphosites(getKinasePWM(), c("TGRRHTLAEV", "LISAVSPEIR"))
}
\seealso{
\link{getKinasePWM} for getting a list of kinase PWMs,
\link{processPhosphopeptides} for the correct phosphosite format, and
\link{getScoreMaps} for mapping PWM scores to percentile ranks
}
