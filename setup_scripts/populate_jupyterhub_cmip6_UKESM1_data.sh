#!/bin/bash

### run the following commands on node27.geog.ucl.ac.uk
### ssp585_files=`ls ssp585/{Omon,Amon}/{tas,ta,va,ua,pr,tos}/g*/v*/{tas_Amon,va_Amon,ua_Amon,tos_Omon,pr_Amon,ta_Amon}_UKESM1-0-LL_*nc`
### ssp370_files=`ls ssp370/{Omon,Amon}/{tas,ta,va,ua,pr,tos}/g*/v*/{tas_Amon,va_Amon,ua_Amon,tos_Omon,pr_Amon,ta_Amon}_UKESM1-0-LL_*nc`
### ssp245_files=`ls ssp245/{Omon,Amon}/{tas,ta,va,ua,pr,tos}/g*/v*/{tas_Amon,va_Amon,ua_Amon,tos_Omon,pr_Amon,ta_Amon}_UKESM1-0-LL_*nc`
### ssp126_files=`ls ssp126/{Omon,Amon}/{tas,ta,va,ua,pr,tos}/g*/v*/{tas_Amon,va_Amon,ua_Amon,tos_Omon,pr_Amon,ta_Amon}_UKESM1-0-LL_*nc`
### hist_files=`ls historical/{Omon,Amon}/{tas,ta,va,ua,pr,tos}/g*/v*/{tas_Amon,va_Amon,ua_Amon,tos_Omon,pr_Amon,ta_Amon}_UKESM1-0-LL_*nc`
### echo $hist_files
### echo $ssp126_files
### echo $ssp370_files
### echo $ssp585_files
### echo $ssp245_files

WEB_SERVER="http://www2.geog.ucl.ac.uk/~ucfaccb/geog0121/cmip6_UKESM1_data/"
LOCAL_DIR="/shared/groups/jrole001/geog0121/cmip6_UKESM1_data"
cd $LOCAL_DIR


hist_files="historical/Amon/pr/gn/v20190406/pr_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc historical/Amon/pr/gn/v20190406/pr_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc historical/Amon/ta/gn/v20190406/ta_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc historical/Amon/ta/gn/v20190406/ta_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc historical/Amon/tas/gn/v20190406/tas_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc historical/Amon/tas/gn/v20190406/tas_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc historical/Amon/ua/gn/v20190406/ua_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc historical/Amon/ua/gn/v20190406/ua_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc historical/Amon/va/gn/v20190406/va_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc historical/Amon/va/gn/v20190406/va_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc historical/Omon/tos/gn/v20190406/tos_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc historical/Omon/tos/gn/v20190406/tos_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc"
mkdir -p historical
cd historical
for fil in $hist_files
do
  wget $WEB_SERVER/$fil
done
cd $LOCAL_DIR

ssp126_files="ssp126/Amon/pr/gn/v20190503/pr_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc ssp126/Amon/pr/gn/v20190503/pr_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc ssp126/Amon/ta/gn/v20190503/ta_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc ssp126/Amon/ta/gn/v20190503/ta_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc ssp126/Amon/tas/gn/v20190503/tas_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc ssp126/Amon/tas/gn/v20190503/tas_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc ssp126/Amon/ua/gn/v20190503/ua_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc ssp126/Amon/ua/gn/v20190503/ua_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc ssp126/Amon/va/gn/v20190503/va_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc ssp126/Amon/va/gn/v20190503/va_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc ssp126/Omon/tos/gn/v20190708/tos_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc ssp126/Omon/tos/gn/v20190708/tos_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc"
mkdir -p ssp126
cd ssp126
for fil in $ssp126_files
do
  wget $WEB_SERVER/$fil
done
cd $LOCAL_DIR

ssp245_files="ssp245/Amon/pr/gn/v20190507/pr_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_201501-204912.nc ssp245/Amon/pr/gn/v20190507/pr_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_205001-210012.nc ssp245/Amon/tas/gn/v20190507/tas_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_201501-204912.nc ssp245/Amon/tas/gn/v20190507/tas_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_205001-210012.nc ssp245/Amon/ua/gn/v20190507/ua_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_201501-204912.nc ssp245/Amon/ua/gn/v20190507/ua_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_205001-210012.nc ssp245/Amon/va/gn/v20190507/va_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_201501-204912.nc ssp245/Amon/va/gn/v20190507/va_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_205001-210012.nc ssp245/Omon/tos/gn/v20190507/tos_Omon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_201501-204912.nc ssp245/Omon/tos/gn/v20190507/tos_Omon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_205001-210012.nc"
mkdir -p ssp245
cd ssp245
for fil in $ssp245_files
do
  wget $WEB_SERVER/$fil
done
cd $LOCAL_DIR

ssp370_files="ssp370/Amon/pr/gn/v20190510/pr_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_201501-204912.nc ssp370/Amon/pr/gn/v20190510/pr_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_205001-210012.nc ssp370/Amon/ta/gn/v20190510/ta_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_201501-204912.nc ssp370/Amon/ta/gn/v20190510/ta_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_205001-210012.nc ssp370/Amon/tas/gn/v20190510/tas_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_201501-204912.nc ssp370/Amon/tas/gn/v20190510/tas_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_205001-210012.nc ssp370/Amon/ua/gn/v20190510/ua_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_201501-204912.nc ssp370/Amon/ua/gn/v20190510/ua_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_205001-210012.nc ssp370/Amon/va/gn/v20190510/va_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_201501-204912.nc ssp370/Amon/va/gn/v20190510/va_Amon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_205001-210012.nc ssp370/Omon/tos/gn/v20190510/tos_Omon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_201501-204912.nc ssp370/Omon/tos/gn/v20190510/tos_Omon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_205001-210012.nc"
mkdir -p ssp370
cd ssp370
for fil in $ssp370_files
do
  wget $WEB_SERVER/$fil
done
cd $LOCAL_DIR

ssp585_files="ssp585/Amon/pr/gn/v20190507/pr_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc ssp585/Amon/pr/gn/v20190507/pr_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc ssp585/Amon/ta/gn/v20190507/ta_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc ssp585/Amon/ta/gn/v20190507/ta_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc ssp585/Amon/tas/gn/v20190507/tas_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc ssp585/Amon/tas/gn/v20190507/tas_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc ssp585/Amon/ua/gn/v20190507/ua_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc ssp585/Amon/ua/gn/v20190507/ua_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc ssp585/Amon/va/gn/v20190507/va_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc ssp585/Amon/va/gn/v20190507/va_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc ssp585/Omon/tos/gn/v20190726/tos_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc ssp585/Omon/tos/gn/v20190726/tos_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc"
mkdir -p ssp585
cd ssp585
for fil in $ssp585_files
do
  wget $WEB_SERVER/$fil
done
cd $LOCAL_DIR

moc_files="historical/Omon/msftyz/gn/v20190815/msftyz_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc historical/Omon/msftyz/gn/v20190815/msftyz_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc ssp126/Omon/msftyz/gn/v20190816/msftyz_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc ssp126/Omon/msftyz/gn/v20190816/msftyz_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc ssp245/Omon/msftyz/gn/v20190819/msftyz_Omon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_201501-204912.nc ssp245/Omon/msftyz/gn/v20190819/msftyz_Omon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_205001-210012.nc ssp370/Omon/msftyz/gn/v20190819/msftyz_Omon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_201501-204912.nc ssp370/Omon/msftyz/gn/v20190819/msftyz_Omon_UKESM1-0-LL_ssp370_r1i1p1f2_gn_205001-210012.nc ssp585/Omon/msftyz/gn/v20190819/msftyz_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc ssp585/Omon/msftyz/gn/v20190819/msftyz_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc"
for fil in $moc_files
do
  cd ${fil%%/*}
  wget $WEB_SERVER/$fil
  cd ..
done
cd $LOCAL_DIR

full_ocean_files="additional_files/so_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-189912.nc additonal_files/so_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_190001-194912.nc additonal_files/so_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-199912.nc additonal_files/so_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_200001-201412.nc additonal_files/so_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc additonal_files/so_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-209912.nc additonal_files/so_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_210001-210012.nc additonal_files/so_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc additonal_files/so_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-209912.nc additonal_files/so_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_210001-210012.nc additonal_files/thetao_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-189912.nc additonal_files/thetao_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_190001-194912.nc additonal_files/thetao_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-199912.nc additonal_files/thetao_Omon_UKESM1-0-LL_historical_r1i1p1f2_gn_200001-201412.nc additonal_files/thetao_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc additonal_files/thetao_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-209912.nc additonal_files/thetao_Omon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_210001-210012.nc additonal_files/thetao_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc additonal_files/thetao_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-209912.nc additonal_files/thetao_Omon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_210001-210012.nc"
for fil in $full_ocean_files
do
  cd ${fil%%/*}
  wget $WEB_SERVER/$fil
  cd ..
done
cd $LOCAL_DIR

evap_files="additional_files/evspsbl_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_185001-194912.nc additional_files/evspsbl_Amon_UKESM1-0-LL_historical_r1i1p1f2_gn_195001-201412.nc additional_files/evspsbl_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_201501-204912.nc additional_files/evspsbl_Amon_UKESM1-0-LL_ssp126_r1i1p1f2_gn_205001-210012.nc additional_files/evspsbl_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_201501-204912.nc additional_files/evspsbl_Amon_UKESM1-0-LL_ssp585_r1i1p1f2_gn_205001-210012.nc additional_files/evspsbl_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_201501-204912.nc additional_files/evspsbl_Amon_UKESM1-0-LL_ssp245_r1i1p1f2_gn_205001-210012.nc"
for fil in $evap_files
do
  cd ${fil%%/*}
  wget $WEB_SERVER/$fil
  cd ..
done
cd $LOCAL_DIR

psl_files="additional_files/psl_day_UKESM1-0-LL_historical_r1i1p1f2_gn_18500101-19491230.nc additional_files/psl_day_UKESM1-0-LL_historical_r1i1p1f2_gn_19500101-20141230.nc additional_files/psl_day_UKESM1-0-LL_ssp126_r1i1p1f2_gn_20150101-20491230.nc additional_files/psl_day_UKESM1-0-LL_ssp126_r1i1p1f2_gn_20500101-21001230.nc additional_files/psl_day_UKESM1-0-LL_ssp245_r1i1p1f2_gn_20150101-20491230.nc additional_files/psl_day_UKESM1-0-LL_ssp245_r1i1p1f2_gn_20500101-21001230.nc additional_files/psl_day_UKESM1-0-LL_ssp370_r1i1p1f2_gn_20150101-20491230.nc additional_files/psl_day_UKESM1-0-LL_ssp370_r1i1p1f2_gn_20500101-21001230.nc additional_files/psl_day_UKESM1-0-LL_ssp585_r1i1p1f2_gn_20150101-20491230.nc additional_files/psl_day_UKESM1-0-LL_ssp585_r1i1p1f2_gn_20500101-21001230.nc"
for fil in $psl_files
do
  cd ${fil%%/*}
  wget $WEB_SERVER/$fil
  cd ..
done
cd $LOCAL_DIR
