#!/bin/bash

# Build and archive the framework
#carthage build --no-skip-current
#carthage archive

# Recover the credentials
netrcFile=~/.netrc
read netrcLine <<< $(awk '/kisiodigital.jfrog.io/' $netrcFile)
read machine machineName login loginValue password passwordValue <<< $( echo ${netrcLine} | awk -F"|" '{print $1" "$2" "$3" "$4" "$5" "$6}' )
if [ $loginValue = "" ]
then
  echo "Error : Unvalid login found in netrc file."
  exit
fi
if [ $passwordValue = "" ]
then
  echo "Error : Unvalid password found in netrc file."
  exit
fi

# Recover the version
infoPlistFile=$PWD/NavitiaSDK/Info.plist
read versionLine <<< $(awk '/CFBundleVersion/ {for(i=1; i<=1; i++) {getline; print}}' $infoPlistFile)
read balise versionAndClosedBalise <<< $( echo ${versionLine} | awk -F">" '{print $1" "$2}' )
read version closedBalise <<< $( echo ${versionAndClosedBalise} | awk -F"<" '{print $1" "$2}' )
if [ $version = "" ]
then
  echo "Error : unvalid bundle version found in plist file."
  exit
fi

# Recover debug or release
read versionPrefix versionSuffix <<< $( echo ${version} | awk -F"-" '{print $1" "$2}' )
if [ $versionSuffix = "snapshot" ]
then
  echo "Deploy on snapshot"
  releaseOrDebug="ios-snapshot"
else
  echo "Deploy on release"
  releaseOrDebug="ios-release"
fi

# Deploy framework on artifactory
curl -u"$loginValue":"$passwordValue" -T NavitiaSDK.framework.zip "https://kisiodigital.jfrog.io/kisiodigital/"$releaseOrDebug"/expert/"$version"/NavitiaSDK.framework.zip"
