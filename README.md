This repo contains some data and example code related to microwave vegetation optical depth-based calculations of ecosystem scale isohydricity. For more information about this approach, see the articles:

1) A.G. Konings and P. Gentine (2017): Global variations in ecosystem-scale isohydricity. Global Change Biology 23(2): 891-905.
and 
2) A.G. Konings, A.P. Williams, and P. Gentine (2017): Sensitivity of grassland productivity to aridity controlled by stomatal and xylem 
regulation. Nature Geoscience. Provisionally Accepted.

The ecosystem scale indicator of isohydricity in this approach was designed to mirror one at the plant scale derived and introduced in:
Martinez-Vilalta J, Poyatos R, Aguad D, Retana J, Mencuccini M (2014) A new look at water transport regulation in plants. New Phytologist, 204, 105–115.

The metric is the slope of the linear relationship between midday VOD - which is assumed to be indicative of leaf water potential - and early morning or midnight VOD - which is assumed to be indicative of root-zone soil water potential. Days with rainfall are filtered out because they lead to several sources of error: a possible influence of canopy interception water on the VOD, a deviation from the equilibrium conditions originally assumed to derive the metric, and undue sensitivity to the timing of rainfall. 

As such, there are two main choices to be made when calculating ecosystem-scale isohydricity: the source of VOD data (different satellites with different frequencies have different overpass times, and different datasets from different algorithms are available) and the choice of rainfall data used for filtering. Differences can be non-negligible. Here, two datasets are included: a global dataset based om AMSR-E VOD derived from the LPRM dataset (2003-2010) filtered with TRMM rainfall data, and a Continental US version filtered with PRISM rainfall.

LPRM citations: 

1) Meesters AGCA, De Jeu RAM, Owe M (2005) Analytical derivation of the vegetation optical depth from the microwave polarization difference index. IEEE Geoscience and Remote Sensing Letters, 2, 121–123.

2) Owe M, de Jeu R, Holmes T (2008) Multisensor historical climatology of satellite-derived global land surface moisture. Journal of Geophysical Research: Earth Surface, 113.
LPRM data downloaded from ftp://hydro1.sci.gsfc.nasa.gov/data/s4pa/WAOB/

If you wish to discuss these data or this approach, feel free to email konings@stanford.edu
