[![R build status](https://github.com/jhollist/lakemorpho/workflows/R-CMD-check/badge.svg)](https://github.com/jhollist/lakemorpho/actions)

[![F1000Research](https://img.shields.io/badge/F1000Research-Published-blue.svg)](https://f1000research.com/articles/6-1718)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5524742.svg)](https://doi.org/10.5281/zenodo.5524742)

[![RStudio_CRAN_Downloads](https://cranlogs.r-pkg.org/badges/lakemorpho)](https://cranlogs.r-pkg.org/badges/lakemorpho)

# lakemorpho
The purpose of `lakemorpho` is to provide a suite of tools that can be used to calculate basic lake morphometry metrics from an input SpatialPolygonsDataframe of a lake and a digital elevation model, as a RasterLayer, for the terrain surrounding that lake.  These tools are being used to calculate lake morphometry metrics for all "lakepond" waterbodies in the [NHDPlus V2](https://nhdplus.com/NHDPlus/).

For a detailed description of the package and its use, see:

Hollister J and Stachelek J. lakemorpho: Calculating lake morphometry metrics in R [version 1; referees: 2 approved]. F1000Research 2017, 6:1718 
[(doi: 10.12688/f1000research.12512.1)](https://f1000research.com/articles/6-1718/v1)

# Metrics Included
`lakemorpho` calculates the following metrics

- Surface Area
- Shoreline Length
- Shoreline Development
- Maximum Depth
- Mean Depth
- Lake Volume
- Maximum Lake Length
- Mean Lake Width
- Maximum Lake Width 
- Major and Minor Axis
- Fetch from a specified bearing

# To install 
Install version 1.1.0 of `lakemorpho` from CRAN:

```
install.packages("lakemorpho")
require(lakemorpho)
```

Install development version of `lakemorpho` from GitHub:

```
install.packages("devtools")
require(devtools)
install_github("USEPA/lakemorpho")
require(lakemorpho)
```


# EPA Disclaimer
The United States Environmental Protection Agency (EPA) GitHub project code is provided on an "as is" basis and the user assumes responsibility for its use.  EPA has relinquished control of the information and no longer has responsibility to protect the integrity, confidentiality, or availability of the information.  Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by EPA.  The EPA seal and logo shall not be used in any manner to imply endorsement of any commercial product or activity by EPA or the United States Government. 
