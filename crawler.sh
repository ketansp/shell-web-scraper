mkdir -p crawl-data
cd crawl-data
wget -q -r -l5 -x 5  https://medium.com
cd ..
grep -r -Po -h '(?<=href=")[^"]*' crawl-data/ >links_temp.csv
grep "^http" links_temp.csv >links_temp_filtered.csv
sort -u links_temp_filtered.csv > links.csv
rm -rf crawl-data links_temp.csv links_temp_filtered.csv
