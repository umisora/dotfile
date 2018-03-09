#!/bin/sh

### Slack ###
function slackMessageBasic()
{
    USERNAME=`hostname`
    TITLE="IP address is ... " 
    MESSAGE=$1
    COLOR="good"  # good,warning,denger
    WEBHOOK_URL=https://hooks.slack.com/services/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

    curl -X POST --data-urlencode \
    "payload={
      \"channel\": \"${CHANNEL}\",
      \"username\": \"${USERNAME}\",
      \"attachments\": [
        {
          \"color\": \"${COLOR}\",
          \"title\": \"${TITLE}\",
          \"text\": \"${MESSAGE}\"
        }
      ],
    }" \
    ${WEBHOOK_URL}
}

## main
ips=""
for h in `ifconfig -l`; do 
  if [[ $h =~ en ]]; then
    ip_record=`ifconfig $h | grep "inet "`;
    if [ $? = 0 ]; then ips="$h : ${ips}\n${ip_record}" ; fi
  fi;
done

slackMessageBasic "${ips}"
