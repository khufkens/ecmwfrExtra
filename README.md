# ecmwfrExtra proposal

[![Build Status](https://travis-ci.org/khufkens/ecmwfrExtra.svg?branch=master)](https://travis-ci.org/khufkens/ecmwfrExtra)

The European Center for Medium-Range Weather (ECMWF) forecasts provides global numeric weather predictions, serving both European member states and the (scientific) community at large. Additional data products include air quality analysis, ocean circulation analysis and hydrological predictions. The variety of services supports a broad range of applications, public services, agriculture, researches well as policy makers.

The ECMWF distributes their data products through a number of application programming interfaces (APIs). In particular the ECMWF WebAPI and for a subset of the products the Copernicus Climate Data Store (CDS). Data access to these sources is currently provided by the recent 'ecmwfr' package.

Currently most of ECMWF focus is on python based solutions. Comprehensive post-processing routines and examples are therefore missing for the geo-spatial R community. Even simple operation such as calculating long term means and spatial averaging are poorly documented, limiting the accessibility for first time (data) users.

Here, we propose to collaboratively develop a comprehensive set of routines focussed on the ECMWF data products and their diverse user community. We will take cues from previous efforts in python such as [MetPy](https://www.unidata.ucar.edu/software/metpy/), but will not limited to meteorological data questions. A search of CRAN (for ECMWF) only returns a limited number of projects (12) using ECMWF data, all of which address very particular niche based questions regarding air pollution or hydrological modelling. Our proposal will result in an ECMWF processing package (provisionally ecmwfrExtra) which will make for easier, reproducible and transparent processing of ECMWF data, while at the same time providing educational material (through vignettes).


## License
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">ISC Boilerplate</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/stephlocke" property="cc:attributionName" rel="cc:attributionURL">Stephanie Locke</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/RConsortium/isc-proposal" rel="dct:source">https://github.com/RConsortium/isc-proposal</a>.
