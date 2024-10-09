# Copyright 2021 ARC Centre of Excellence for Climate Extremes
#
# author: Paola Petrelli <paola.petrelli@utas.edu.au>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This script is used to download and update the GHCN dataset on
# the NCI server
# data is downloaded from the NCDC NOAA ftp server
#    ftp://ftp.ncdc.noaa.gov/pub/data/ghcn
# use anonymous and your email as password to connect
# The files are updated daily on the server
#
# The dataset is stored in /g/data/ia39/aus-ref-clim-data-nci/ghcn/data/<frequency>/<product>
# currently only frequency is `daily` and product `by_year`
#
# To run the script ./ghcn_download.sh 
# A record of updates is kept in /g/data/ia39/aus-ref-clim-data-nci/ghcn/code/update_log.txt
#
# Last change:
# 2021-12-22
# 2022-02-01 - added mv csv to previous folder before gunzip
# 2022-04-07 - moved directory to /g/data/ia39/aus-ref-clim-data-nci/ghcn/
# 2022-04-12 - remove replica folder and introduce $AUSREFDIR
#

root_dir=${AUSREFDIR:-/g/data/jt48/aus-ref-clim-data-nci}
cd ${root_dir}/ghcn/data/daily/by_year/
today=$(date "+%Y-%m-%d")
# using wget as we are currently only downloading from one folder
wget -r -nv -np -nd -S ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/
# moving last download to previous folder as gunzip won't overwrite the existing csv
# and also we can keep a copy of last day files in case there are issues
mv *.csv previous/.
gunzip *.gz
mv *.txt ${root_dir}/ghcn/data/.
mv wget-log ${root_dir}/ghcn/code/.
echo "${today} updated by $USER" >> ${root_dir}/ghcn/code/update_log.txt

