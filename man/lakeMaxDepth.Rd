% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lakeMaxDepth.R
\name{lakeMaxDepth}
\alias{lakeMaxDepth}
\title{Estimate maximum lake depth}
\usage{
lakeMaxDepth(inLakeMorpho, slope_quant = 0.5, correctFactor = 1)
}
\arguments{
\item{inLakeMorpho}{An object of \code{\link{lakeMorphoClass}}.  Output of the 
\code{\link{lakeSurroundTopo}} function would be appropriate as input}

\item{slope_quant}{The slope quantile to use to estimate maximum depth.
Defaults to the median as described in (Hollister et. al, 
2011).}

\item{correctFactor}{Value used to correct the predicted maximum lake depth.
Defaults to 1. Corrections are simply accomplished by multiplying 
estimated max depth by correction factor. Correction factors can be 
determined empirically by regressing the predicted depth against a 
known maximum depth while forcing the intercept through zero.  The 
slope of the line would then be used as the correction 
factor(Hollister et. al, 2011).}
}
\value{
Returns a numeric value of the predicted maximum depth
}
\description{
This function uses slope and distance to estimate max depth.  This is based 
on the assumption that the slope of the surrounding topography is similar 
to the bathymetry of the lake (Hollister et. al 2011).
}
\examples{
data(lakes)
lakeMaxDepth(inputLM)             
}
\references{
Hollister, J. W., W.B. Milstead, M.A. Urrutia (2011). Predicting 
            Maximum Lake Depth from Surrounding Topography. PLoS ONE 6(9).
            \doi{10.1371/journal.pone.0025764}

Florida LAKEWATCH (2001). A Beginner's guide to water management
            - Lake Morphometry (2nd ed.). Gainesville: Florida LAKEWATCH, 
            Department of Fisheries and Aquatic Sciences.
            \href{http://edis.ifas.ufl.edu/pdffiles/FA/FA08100.pdf}{Link}
}
