# GHCN

## Overview

We have replicated the daily station precipitation data from the Global Historical Climatology Network (GHCN).
GHCN-Daily is an integrated database of daily climate summaries from land surface stations across the globe.
It is comprised of daily climate records from numerous sources that have been integrated and
subjected to a common suite of quality assurance reviews and
contains records from over 100,000 stations in 180 countries and territories.
This is an extract of the dataset description from the
[GHCN website](https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily)
where you can find more information on this data.
We replicated only the precipitation daily station data organised "by_year".
This is an alternate form of the GHCN Daily dataset.
The period of record station files are parsed into yearly files that
contain all available GHCN Daily station data for that year 
plus a time of observation field (where available).
The original by_year files are updated daily to be in sync with updates to the GHCN Daily dataset,
but we are updating them on a weekly basis.

More details on how the data is organised and its status are available from the documentation files stored with the data.
For more information on methods and data quality assurance can be found [here](https://www.ncdc.noaa.gov/ghcn-daily-methods).

## Data download

The data is downloaded from the NCDC NOAA ftp server:  
ftp://ftp.ncdc.noaa.gov/pub/data/ghcn

The files are updated daily on the server. We update them once a week.

The script uses wget, to run: `./ghcn_download.sh`

A record of the updates is kept in `update_log.txt`.

## Data location

We've downloaded GHCN data to:
```
/g/data/ia39/ghcn/replica/data/daily/by_year
```

The files are ascii format: `YYYY.csv`

The files format is described in `/g/data/ia39/ghcn/replica/code/ghcn-daily-by_year-format.txt` 

## License

Data is freely available but there are restrictions on commercial use, from their
[data access policy](https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily):

"Some of the data provided here are based on data exchanged under the World Meteorological Organization (WMO)
World Weather Watch Program according to WMO Resolution 40 (Cg-XII).
This allows WMO member countries to place restrictions on the use or re-export
of their data for commercial purposes outside of the receiving country.
Those country's data summaries and products which are available here
are intended for free and unrestricted use in research, education, and other non-commercial activities.
For non-U.S. locations, the data or any derived product shall not be provided to other users or
be used for their re-export for commercial services."

## Data citation

Menne MJ, Durre I, Korzeniewski B, McNeal S, Thomas K, Yin X, Anthony S, Ray R, Vose RS, Gleason BE, and Houston TG (2012).
Global Historical Climatology Network - Daily (GHCN-Daily), Version 3.
[indicate subset used following decimal, e.g. Version 3.12]. 
NOAA National Climatic Data Center.
http://doi.org/10.7289/V5D21VHZ [access date].

## References

Menne MJ, Durre I, Vose RS, Gleason BE, and Houston TG (2012). 
An overview of the Global Historical Climatology Network-Daily Database. 
*Journal of Atmospheric and Oceanic Technology*, 29, 897-910.
https://doi.org/10.1175/JTECH-D-11-00103.1

https://www.ncdc.noaa.gov/ghcn-daily-references

## Acknowledgement

No statement provided.

## Assistance

For assistance with GHCN data on NCI,
open a new issue at https://github.com/nci-ref-clim-data/GHCN/issues
