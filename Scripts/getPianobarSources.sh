#!/bin/sh

BASE_URL=http://6xq.net/media/00/16
CURRENT_RELEASE=pianobar-2011.04.27

TARBALL=${CURRENT_RELEASE}.tar.bz2
TARBALL_URL=${BASE_URL}/${TARBALL}

BASE_PATH=${CURRENT_RELEASE}/src

# get the tarball
curl -O ${TARBALL_URL}

# extract specific files
tar -xvf ${TARBALL} ${BASE_PATH}/libezxml/* ${BASE_PATH}/libwaitress/* ${BASE_PATH}/libpiano/*

# move files to desired locations
mv ${BASE_PATH}/libezxml/* ezxml/
mv ${BASE_PATH}/libwaitress/* waitress/
mv ${BASE_PATH}/libpiano/* ./

# remove extraction 
rm -rf ${CURRENT_RELEASE} ${TARBALL}