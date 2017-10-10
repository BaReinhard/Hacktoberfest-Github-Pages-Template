FIRSTARG="$1";
SECONDARG="$2";
if [ -z ${1} ] || [ -z ${2} ];
    then 
        echo "Please pass two params: username and reponame"; 
    else  
        cd holder
        npm install
        sed "s/hacktoberfest/${SECONDARG}/g;s/bareinhard/${FIRSTARG}/g" ./holder/src/config.base.js > ./holder/src/config.js
        mv ./holder/* ..
        mv ./holder/.* ..
        sleep 1
        find . -type d -iname "hacktoberfest-github-pages-template" -exec rm -Rf {} \;
fi