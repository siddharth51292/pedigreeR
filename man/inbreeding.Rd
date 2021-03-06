% Generated by roxygen2 (4.0.2.9000): do not edit by hand
% Please edit documentation in R/pedigree.R
\name{inbreeding}
\alias{inbreeding}
\title{Inbreeding coefficients from a pedigree}
\usage{
inbreeding(ped)
}
\arguments{
\item{ped}{an object that inherits from class \linkS4class{pedigree}}
}
\value{
the inbreeding coefficients as a numeric vector
}
\description{
Create the inbreeding coefficients according to the algorithm given
in "Comparison of four direct algorithms for computing inbreeding
coefficients" by Mehdi Sargolzaei and Hiroaki Iwaisaki, Animal
Science Journal (2005) 76, 401--406.
}
\examples{
ped <- pedigree(sire=c(NA,NA,1,1,4,5), dam=c(NA,NA,2,NA,3,2), label=1:6)
inbreeding(ped)
}

