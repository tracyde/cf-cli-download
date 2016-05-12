#!/bin/bash

DIR=$PWD

for platform in "debian32" "debian64" "macosx64" "redhat32" "redhat64" "windows32" "windows64"; do
 mkdir -p bin/$platform
 cd bin/$platform
 wget --content-disposition "https://cli.run.pivotal.io/stable?release=${platform}&version=6.18.0&source=github-rel"
 cd $DIR
done

cd $DIR
for platform in "linux32-binary" "linux64-binary" "macosx64-binary" "windows32-exe" "windows64-exe"; do
  mkdir -p bin/$platform
  cd bin/$platform
  wget --content-disposition "https://cli.run.pivotal.io/stable?release=${platform}&version=6.18.0&source=github-rel"
  cd $DIR
done
