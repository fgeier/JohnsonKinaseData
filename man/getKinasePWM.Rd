% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score_phosphosites.R
\name{getKinasePWM}
\alias{getKinasePWM}
\title{Get a list of position specific weight matrices (PWMs)}
\usage{
getKinasePWM(includeSTfavorability = TRUE)
}
\arguments{
\item{includeSTfavorability}{Include serine vs. threonine favorability for
the central phospho-acceptor?}
}
\value{
A named list of numeric matrices (PWMs).
}
\description{
The function returns a list of PWMs for the 303 human serine/threonine
kinases originally published in Johnson et al. 2023. Each PWM stores the
log2-odds score per amino acid (23 rows) and position (10 columns) in matrix
format. Beside the 20 standard amino acids also phosphorylated serine,
threonine and tyrosine residues are included.
}
\details{
The central phospho-acceptor position of each PWM is either serine or
threonine. By default, this position quantifies the favorability of serine
over threonine. This favorability can be omitted when setting
'includeSTfavorability=FALSE' in which case the central position doesn't
contribute to the PWM score.
}
\examples{
pwms <- getKinasePWM()
}
\references{
Johnson, J.L., Yaron, T.M., Huntsman, E.M. et al. An atlas of
substrate specificities for the human serine/threonine kinome. Nature 613,
759–766 (2023). https://doi.org/10.1038/s41586-022-05575-3
}
