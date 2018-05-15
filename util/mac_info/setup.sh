#!/bin/sh
plists=("mac_info_notice.plist" "mac_update.plist")
current_path=`pwd`

function register_plist()
{
  plist_file=$1
  ln -fns ${current_path}${1} ~/Library/LaunchAgents/
  launchctl load ${plist_file}
  launchctl list | grep ${plist_file}
}

for e in ${plists[@]}; do
    echo "Register ${e}"
    register_plist ${e}
done
