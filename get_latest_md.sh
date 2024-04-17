set -o nounset
set -o errexit

artifact_download_url=$1

# latest_url=$(wget https://github.com/ERIGrid2/test-case-repository-word2md/releases/latest --max-redirect=0 2>&1 | grep Location)
# echo "Latest URL: $latest_url"
# prefix="Location: https://github.com/ERIGrid2/test-case-repository-word2md/releases/tag/"
# suffix=" [following]"
# tail=${latest_url#"$prefix"}
# release_version=${tail%"$suffix"}
# echo "Release version: $release_version"
# wget https://github.com/ERIGrid2/test-case-repository-word2md/releases/download/${release_version}/erigrid2-test-cases.zip

wget ${artifact_download_url}

unzip test-cases-markdown.zip -d content/en/docs/
# for dir in $(find content/en/docs/erigrid2-test-cases/ -mindepth 1 -maxdepth 1 -type d);
# do
#   cp -a $dir content/en/docs/UseCases
# done
rm test-cases-markdown.zip
# rm -rf content/en/docs/erigrid2-test-cases
