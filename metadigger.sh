#! /bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "\t \t ${RED} T0kr4m's ${YELLOW} M3T4D1GG3R ${NC}"

if [ $# -ne 2 ]; then
	echo -e " Usage: metadigger.sh WEBSITE EXTENSION\n" \
		"Example: metadigger.sh tesla.com pdf"
	exit 1
fi

website=$1
extension=$2
file_result="metadigger_result"
file_list="file_list"

if ! which lynx &> /dev/null
then
    echo e " ${RED}Please, install Lynx to proceed \n"
    exit 1
fi

if ! which exiftool &> /dev/null
then
    echo e " ${RED}Please, install exiftool to proceed \n"
    exit 1
fi

echo -e "${YELLOW} Starting Google Hacking ... \n ${NC}"

lynx --dump "https://google.com.br/search?&q=site:${website}+ext:${extension}" | grep ".${extension}" | cut -d "=" -f2 | egrep -v "site|google" | sed 's/...$//' > ${file_result}
sleep 2

echo -e "${GREEN} Job Finished ... Starting Analysis on results... ${NC}"
sleep 2

for url in $(cat "${file_result}"); do 
wget -q $url;
echo "${url##*/}" >> "${file_list}"
done

sleep 2

echo -e "${RED} Showing results in two seconds... ${NC}"
sleep 2

for _file in $(ls | grep .pdf); do
	echo -e "${YELLOW} Results for ${_file}: \n ${NC}"
	exiftool $_file;
	echo -e " ${YELLOW} - - - - - - - - - - - - - - - - - - - ${NC}"
done 

while IFS= read -r file; do 
    rm "$file" &>/dev/null
done < $file_list

rm $file_list
rm $file_result
