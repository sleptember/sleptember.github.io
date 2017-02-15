find . -name '.DS_Store' -type f -delete

./remove.sh
./packages.sh

dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages
