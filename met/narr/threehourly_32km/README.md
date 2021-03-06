### Notes on data processing

* ran wget.sh on July 28 2015
* weather.sh run July 28 2015
 * combine all files within year, placed in out/ 
* concatenate.sh run July 29 2015
 * combines years into a single file
* next ... rename variables ...

### NOAA Data Set Description and Use policy

### Use

```sh
wget.sh
weather.sh
rename_vars_convert_precip.sh
????
```

### NOAA info
    U.S. Department of Commerce | National Oceanic & Atmospheric
    Administration | NOAA Research
    NOAA Earth System Research Laboratory

    Physical Sciences Division

    NCEP North American Regional Reanalysis: NARR

    Data set identifier: NCEP North American Regional Reanalysis (NARR)

    See the PSD NARR webpage for more information on PSD's involvement in
    the NARR project.
    
    One-Line Description:

    * Very High Resolution Reanalysis of the North American region
    including assimilated precipitation.
    
    Spatial coverage:
    The native model grid is converted to a Northern Lambert Conformal
    Conic grid which is what we archive. Corners of this grid are
    12.2N;133.5W, 54.5N; 152.9W, 57.3N; 49.4W ,14.3N;65.1W (essentially,
    North America). The grid resolution is 349x277 which is approximately
    0.3 degrees (32km) resolution at the lowest latitude. A page
    describing the coverage along with information on reading the
    projection is available.

    Temporal coverage:
    Jan 1, 1979 to Dec 31, 2009 with output every 3 hours (0z,3z...),
    as well as daily and monthly means for the period 1979-2009.

    Levels:
    29 pressure levels (hPa):
    1000, 975, 950, 925, 900, 875, 850, 825, 800, 775, 750, 725, 700, 650,
    600, 550, 500, 450, 400, 350, 300, 275, 250, 225, 200, 175, 150, 125,
    100.
    * soil variables: 0 , 10 , 40 , 100, (800) cm
    * monolevel
    Single level including surface and near surface, top of atmosphere
    and cloud heights, and entire atmosphere.

    Update Schedule:
    We plan on making all the data from 1979-2006 for our variable subset
    available for 8-times daily data, daily and monthly means.

    Source:
    Dataset was originally produced at NOAA's National Center for
    Atmospheric Prediction (NCEP) and is available in it's original grib
    format through NOAA NCDC's access page. It is also available in the
    same format from NCAR.

    Caveats:
    Useful information can be found at NCEP's NARR FAQ page and from
    Albany's Department of Atmospheric Science NARR Usage Notes.

    Usage Restrictions:
    
    * None
    
    Detailed Description:
    
    * The NARR project is an extension of the NCEP Global Reanalysis
    which is run over the North American Region. The NARR model uses
    the very high resolution NCEP Eta Model (32km/45 layer) together
    with the Regional Data Assimilation System (RDAS) which,
    significantly, assimilates precipitation along with other
    variables. The improvements in the model/assimilation have
    resulted in a dataset with substantial improvements in the
    accuracy of temperature, winds and precipitation compared to the
    NCEP-DOE Global Reanalysis 2. We currently have output from Jun
    2006 which includes 8 times daily data at 29 levels and most of
    the variables. For a complete list of model output variables, see
    NCEP's variable list.
    * Additional information can be found at NCEP's NARR page.

    Related File Naming & Structure Information:
    
    File Names:
    * 8-times daily and daily - File names are composed of variable
    abbreviations and year/month or just year: as yyyymm.nc or yyyy.nc
    In directory: /Datasets/NARR/ or /Datasets/NARR/Dailies
    * Monthly means/ltms are (variable).mon.mean.nc in /Datasets/NARR/Monthlies
    
    Dataset Format and Size:
    * All data are stored in PSD standard NetCDF files and are (packed).
    * The data are divided by variable and year and month into separate files
    * There are 2100 files currently
    * Size of file is about 1.4G per variable per year/month for 8xdaily data
    * Size of file is about 68M per variable per /month for monthly data
    * Current total of 29.4 Tbytes for 8xDaily.
    
    * 8x daily data are available from ftp.cdc.noaa.gov in /Datasets/NARR/.
    * The 8x data files are quite large, so you may only be able to
    download them if you have a fast network connection.
    
    Missing Data:
    * Missing data is flagged with a value of 32767s.
    
    Citation:
    
    * Please note: If you acquire NCEP Reanalysis data products from
    PSD, we ask that you acknowledge us in your use of the data. This
    may be done by including text such as NCEP Reanalysis data
    provided by the NOAA/OAR/ESRL PSD, Boulder, Colorado, USA, from
    their Web site at http://www.cdc.noaa.gov/ in any documents or
    publications using these data. We would also appreciate receiving
    a copy of the relevant publications. This will help PSD to justify
    keeping the NCEP Reanalysis data set freely available online in
    the future. Thank you!
    * NORTH AMERICAN REGIONAL REANALYSIS: A long-term, consistent,
    high-resolution climate dataset for the North American domain, as
    a major improvement upon the earlier global reanalysis datasets in
    both resolution and accuracy, Fedor Mesinger et. al, submitted to
    BAMS 2004.
    
    References:
    
    * NORTH AMERICAN REGIONAL REANALYSIS: A long-term, consistent,
    high-resolution climate dataset for the North American domain, as
    a major improvement upon the earlier global reanalysis datasets in
    both resolution and accuracy, Fedor Mesinger et. al, submitted to
    BAMS 2004.
    
    _________________________________________________________________
    The NCEP NARR descriptions here will be subdivided into separate sections:
    Pressure level, Monolevel (surface and others) and Subsurface

    * Pressure
    * Monolevel
    * Subsurface
    _________________________________________________________________

    Pressure Level Data

    Archive parameters: File names are composed of variable abbreviations
    and year/month: (variable).(year)(mm).nc
    
    Note: These variables are instantaneous values at the reference time.
    
    Variable units Abbreviation Statistic Plot/Subset Data Download sample
    netCDF File
    Geopotential Height m hgt  hgt.197901.nc
    Zonal Wind m/s uwnd  uwnd.197901.nc
    Meridional Wind m/s vwnd  vwnd.197901.nc
    Omega Pa/s omega  omega.197901.nc
    Air Temperature K air  air.197901.nc
    Specific Humidity kg/kg shum  shum.197901.nc
    Turbulent Kinetic Energy J/kg tke  tke.197901.nc
    
    Detailed description: The NARR project is an extension of the NCEP
    Global Reanalysis which is run over the North American Region. The
    NARR model uses the very high resolution NCEP Eta Model (32km/45
    layer) together with the Regional Data Assimilation System (RDAS)
    which, significantly, assimilates precipitation along with other
    variables. The improvements in the model/assimilation have resulted in
    a dataset with substantial improvements in the accuracy of
    temperature, winds and precipitation compared to the NCEP-DOE Global
    Reanalysis 2. The model currently has output from Jan 1, 1979-Dec 31
    2004 which includes 8 times daily data at 29 levels. Currently, CDC
    makes available the pressure level data only (Jan 1979-Dec 2004)
    though we plan to later make available most of the surface and upper
    atmospheric variables for the complete time period. For a complete
    list of model output variables, see NCEP's variable list.
    
    Additional information can be found at NCEP's NARR page.
    
    Please note: If you acquire NCEP Reanalysis data products from CDC, we
    ask that you acknowledge us in your use of the data. This may be done
    by including text such as NCEP Reanalysis data provided by the
    NOAA-CIRES Climate Diagnostics Center, Boulder, Colorado, USA, from
    their Web site at http://www.cdc.noaa.gov/ in any documents or
    publications using these data. We would also appreciate receiving a
    copy of the relevant publications. This will help CDC to justify
    keeping the NCEP Reanalysis data set freely available online in the
    future. Thank you! Data set format and size:
    * All data are stored in netCDF files
    * The data are divided by variable and year and month into separate files
    * There are 2100 files currently
    * Size of file is about 1.4G per variable per year/month for 8xdaily data
    * Current total of 29.4 Tbytes for 8xDaily.
    
    Availability and usage restrictions:
    * By anonymous FTP:
    + 8x daily data are available from ftp.cdc.noaa.gov in /Datasets/NARR/.
    + The 8x data files are quite large, so you may only be able to
    download them if you have a fast network connection.
    * No usage restrictions.
    _________________________________________________________________
    Other General Information
    
    References:
    * Please use this reference if you use the dataset.:
    
    NORTH AMERICAN REGIONAL REANALYSIS: A long-term, consistent,
    high-resolution climate dataset for the North American domain, as a
    major improvement upon the earlier global reanalysis datasets in
    both resolution and accuracy, Fedor Mesinger et. al, submitted to
    BAMS 2004..
    
    Contact:
    
    * Physical Sciences Division: Data Management
    NOAA/ESRL/PSD
    325 Broadway
    Boulder, CO 80305-3328
    esrl.psd.data@noaa.gov
    
    U.S. Department of Commerce | National Oceanic and Atmospheric
    Administration
    Earth System Research Laboratory | Physical Sciences Division
    Current page: http://www.cdc.noaa.gov/cdc/data.narr.html
    Contact the Webmaster
    (webmaster.psd@noaa.gov)
