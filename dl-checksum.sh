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

dl_ver splunkforwarder universalforwarder 8.0.2 a7f645ddaf91 Linux x86_64
