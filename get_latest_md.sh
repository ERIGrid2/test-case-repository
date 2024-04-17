# set -o nounset
# set -o errexit

artifact_download_url=$1

# latest_url=$(wget https://github.com/ERIGrid2/test-case-repository-word2md/releases/latest --max-redirect=0 2>&1 | grep Location)
# echo "Latest URL: $latest_url"
# prefix="Location: https://github.com/ERIGrid2/test-case-repository-word2md/releases/tag/"
# suffix=" [following]"
# tail=${latest_url#"$prefix"}
# release_version=${tail%"$suffix"}
# echo "Release version: $release_version"
# wget https://github.com/ERIGrid2/test-case-repository-word2md/releases/download/${release_version}/erigrid2-test-cases.zip

echo "Getting: $artifact_download_url"

wget_received=8
retry_count=0
while [ $wget_received -eq 8 ]
do
    wget -q ${artifact_download_url}
    wget_received=$?
    echo "wget received: $wget_received"
    if [ $wget_received -ne 0 ]
    then
        ((retry_count=$retry_count+1))
        if [ $retry_count -gt 10 ];
        then
            break
        else
            sleep 5
        fi
    fi

done
if [ $wget_received -eq 0 ];
then
    unzip test-cases-markdown.zip -d content/en/docs/
    rm test-cases-markdown.zip
    exit 0
fi
exit 1


# wget ${artifact_download_url}

# unzip test-cases-markdown.zip -d content/en/docs/
# for dir in $(find content/en/docs/erigrid2-test-cases/ -mindepth 1 -maxdepth 1 -type d);
# do
#   cp -a $dir content/en/docs/UseCases
# done
# rm test-cases-markdown.zip
# rm -rf content/en/docs/erigrid2-test-cases
