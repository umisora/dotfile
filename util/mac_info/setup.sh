#!/bin/sh
current_path=`pwd`
plist_path="${current_path}mac_info_notice.plist"
ln -s ${plist_path} ~/Library/LaunchAgents/
launchctl load mac_info_notice.plist
launchctl list | grep mac_info_notice.plist
