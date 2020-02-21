#!/bin/bash

cd /data/aod/cvdp_cmip6/geog0121/
files=`ls UKESM*ssp*/*ssp*cvdp_data.????-*nc`

#sea ice variable names...
sic_vars="sic_nh_spatialmean_ann,sic_nh_spatialmean_djf,sic_nh_spatialmean_jja,sic_nh_spatialmean_mam,sic_nh_spatialmean_son,sic_nh_spatialstddev_ann,sic_nh_spatialstddev_djf,sic_nh_spatialstddev_jja,sic_nh_spatialstddev_mam,sic_nh_spatialstddev_son,sic_nh_trends_ann,sic_nh_trends_djf,sic_nh_trends_jja,sic_nh_trends_mam,sic_nh_trends_mon,sic_nh_trends_son,sic_sh_spatialmean_ann sic_sh_spatialmean_djf sic_sh_spatialmean_jja sic_sh_spatialmean_mam sic_sh_spatialmean_son sic_sh_spatialstddev_ann sic_sh_spatialstddev_djf sic_sh_spatialstddev_jja sic_sh_spatialstddev_mam sic_sh_spatialstddev_son sic_sh_trends_ann sic_sh_trends_djf sic_sh_trends_jja sic_sh_trends_mam sic_sh_trends_mon sic_sh_trends_son"

#make a temporary file to hold the correct time.
ncrcat -O -v time /data/CMIP/CMIP6/CMIP/MOHC/UKESM1-0-LL/historical/r1i1p1f2/Amon/tas/gn/v20190406/tas_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc /data/CMIP/CMIP6/CMIP/MOHC/UKESM1-0-LL/historical/r1i1p1f2/Amon/tas/gn/v20190406/tas_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc /data/CMIP/CMIP6/ScenarioMIP/MOHC/UKESM1-0-LL/ssp585/r1i1p1f2/Amon/tas/gn/v20190507/tas_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc /data/CMIP/CMIP6/ScenarioMIP/MOHC/UKESM1-0-LL/ssp585/r1i1p1f2/Amon/tas/gn/v20190507/tas_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc tmp.all_time.nc

for fil in $files
do
  # remove a few niche fields that include additional wierd time axes (and calendars)
  ncks -O -x -v time_mon1,time_mon2,time_mon3,nino34_autocorrelation,nino34_hov_elnino,nino34_hov_lanina,nino34_monthly_stddev $fil tmp.nc
  # overwrite with the time variable from CMIP6 data itself
  ncks -A tmp.all_time.nc tmp.nc 
  # rename the ice coordinates (to let Panoply plot them)
  ncrename -v lat2d_ice_nh,latitude -v lon2d_ice_nh,longitude tmp.nc
  ncatted -a coordinates,sic*,o,c,"type latitude longitude" tmp.nc
  #NOTE THIS SEA ICE FIX DOES NOT YET WORK PROPERLY ;-(
  cp tmp.nc $fil
done

