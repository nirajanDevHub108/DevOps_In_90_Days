#!/opt/homebrew/bin/bash
gitCersionSourceUrl=https://www.kernel.org/pub/software/scm/git/

downFile=gitVersionInfo_$(date '+%F%T')

httpCode=$(curl -s -w '%{http_code}' ${gitCersionSourceUrl} -o ${downFile})

if [[ ${httpCode} -eq 200 ]]; then
    echo "Succesfully downloaded version info"
    latestversion=$(grep -oE '\-[0-9]+\.[0-9]+\.[0-9]+\.tar.gz' ${downFile} | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | sort --version-sort --field-separator=. | uniq | tail -1)
    echo " latest version is :${latestversion}"
else
    echo "Failed to  get version info"
fi

