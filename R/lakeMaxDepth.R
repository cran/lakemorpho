#' Estimate maximum lake depth
#' 
#' This function uses slope and distance to estimate max depth.  This is based 
#' on the assumption that the slope of the surrounding topography is similar 
#' to the bathymetry of the lake (Hollister et. al 2011).    
#' 
#' @param inLakeMorpho An object of \code{\link{lakeMorphoClass}}.  Output of the 
#'        \code{\link{lakeSurroundTopo}} function would be appropriate as input
#' @param slope_quant The slope quantile to use to estimate maximum depth.  
#'                    Defaults to the median as described in (Hollister et. al, 
#'                    2011).     
#' @param correctFactor Value used to correct the predicted maximum lake depth.  
#'        Defaults to 1. Corrections are simply accomplished by multiplying 
#'        estimated max depth by correction factor. Correction factors can be 
#'        determined empirically by regressing the predicted depth against a 
#'        known maximum depth while forcing the intercept through zero.  The 
#'        slope of the line would then be used as the correction 
#'        factor(Hollister et. al, 2011).
#' @export
#' @return Returns a numeric value of the predicted maximum depth
#' @references Hollister, J. W., W.B. Milstead, M.A. Urrutia (2011). Predicting 
#'             Maximum Lake Depth from Surrounding Topography. PLoS ONE 6(9).
#'             \doi{10.1371/journal.pone.0025764}
#' 
#' @references Florida LAKEWATCH (2001). A Beginner's guide to water management
#'             - Lake Morphometry (2nd ed.). Gainesville: Florida LAKEWATCH, 
#'             Department of Fisheries and Aquatic Sciences.
#'             \href{http://edis.ifas.ufl.edu/pdffiles/FA/FA08100.pdf}{Link}
#' 
#' @import raster
#' @importFrom stats median
#' 
#' @examples
#' data(lakes)
#' lakeMaxDepth(inputLM)             

lakeMaxDepth <- function(inLakeMorpho, slope_quant = 0.5, correctFactor = 1) {
    if (!inherits(inLakeMorpho, "lakeMorpho")) {
      stop("Input data is not of class 'lakeMorpho'.  Run lakeSurround Topo or lakeMorphoClass first.")
    }
    if(is.null(inLakeMorpho$elev)){
      warning("Input elevation dataset required to estimate depth related metrics. Returning NA. 
             Run lakeSurround Topo first with elevation included.")
      return(NA)
    }
    slope <- raster::getValues(terrain(inLakeMorpho$elev, "slope"))
    slope_med <- as.numeric(quantile(slope, probs = slope_quant, na.rm = TRUE))
    if (is.na(slope_med)) {
        return(NA)
    }
    if (slope_med == 0) {
        slope_med <- mean(slope, na.rm = TRUE)
    }
    maxDist <- max(raster::getValues(inLakeMorpho$lakeDistance), na.rm = TRUE)
    return(round(correctFactor * (slope_med * maxDist), 4))
} 
