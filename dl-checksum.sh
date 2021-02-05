#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://www.splunk.com/bin/splunk/DownloadActivityServlet

dl_ver() {
    local app=$1
    local product=$2
    local ver=$3
    local sha=$4
    local os=$5
    local arch=$6
    local file=${app}-${ver}-${sha}-${os}-${arch}.tgz
    local url="$MIRROR?architecture=${arch}&platform=${os}&version=${ver}&product=${product}&filename=${file}&wget=true"

    local lfile=$DIR/$file

    if [ ! -e $lfile ]; then
        wget -q -O $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

# https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.1.2&product=universalforwarder&filename=splunkforwarder-8.1.2-545206cc9f70-Linux-x86_64.tgz&wget=true

dl_ver splunkforwarder universalforwarder 8.1.2 545206cc9f70 Linux x86_64
