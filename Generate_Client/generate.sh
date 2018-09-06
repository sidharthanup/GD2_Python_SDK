#!/bin/bash
set -eu

origin="$(pwd)"
cd ~
if [ ! -d "./openapi-generator" ]
  then
        git clone https://github.com/openapitools/openapi-generator
        cd ~/openapi-generator/
        mvn clean package
        exit 0
else
        cd ~/openapi-generator
fi


dest_dir=${2}

#The following line invokes openapi-generator that generates client library
#Make sure theres a config.py file in your current working directory
#Also Do not edit this line..I dont see any reason to..
java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate -i "${1}" -g python -o "${dest_dir}" -c "${origin}/config.json"




#Just some string cleanup for later concatenation i.e removing the forward-slash character if present
if [ "${dest_dir: -1}" = "/" ]
  then
	dest_dir="${dest_dir: : -1}"
fi



#Renaming a not so aesthetic file name into something moderately aesthetic
mv "${dest_dir}/GD2_Python/api/default_api.py" "${dest_dir}/GD2_Python/api/client.py"




#One liner to recurively substitute some ugly names to something good looking for the SDK using sed
find ${dest_dir}/GD2_Python -type f -print0 | xargs -0 sed -i -e 's/DefaultApi/Client/g' -e 's/default_api/client/g'
exit 0
