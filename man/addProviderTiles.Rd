% Please edit documentation in R/plugin-providers.R
\name{addProviderTiles}
\alias{addProviderTiles}
\alias{providerTileOptions}
\title{Add a tile layer from a known map provider}
\usage{
addProviderTiles(map, provider, layerId = NULL, group = NULL, 
    options = providerTileOptions())

providerTileOptions(errorTileUrl = "", noWrap = FALSE, opacity = NULL, 
    zIndex = NULL, unloadInvisibleTiles = NULL, updateWhenIdle = NULL, 
    detectRetina = FALSE, reuseTiles = FALSE, ...)
}
\arguments{
\item{map}{the map to add the tile layer to}

\item{provider}{the name of the provider (see
\url{http://leaflet-extras.github.io/leaflet-providers/preview/} and
\url{https://github.com/leaflet-extras/leaflet-providers})}

\item{layerId}{the layer id to assign}

\item{group}{the name of the group the newly created layers should belong to
(for \code{\link{clearGroup}} and \code{\link{addLayersControl}} purposes).
Human-friendly group names are permitted--they need not be short,
identifier-style names.}

\item{options}{tile options}

\item{errorTileUrl, noWrap, opacity, zIndex, unloadInvisibleTiles, updateWhenIdle, detectRetina, reuseTiles}{the tile layer options; see
\url{http://leafletjs.com/reference.html#tilelayer}}

\item{...}{named parameters to add to the options}
}
\value{
modified map object
}
\description{
Add a tile layer from a known map provider
}
\examples{
leaflet() \%>\% addProviderTiles("Stamen.Watercolor") \%>\% 
    addProviderTiles("Stamen.TonerHybrid")
}
