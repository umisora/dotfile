#!/bin/sh
source /Users/murakami.katsutoshi/.bash_profile
### Update Brew ###
function updateBrew()
{
    echo "Update Brew ..." | tee /tmp/update_brew.txt
    cd ~/workspace/dotfile/
    /usr/local/bin/brew bundle 2>&1 | tee -a /tmp/update_brew.txt
}

### Update gcloud ###
function updateGcloud()
{
    echo "Update gcloud ..." | tee /tmp/update_gcloud.txt
    gcloud components update 2>&1 | tee -a /tmp/update_gcloud.txt
}

function slackMessageBasic()
{
    USERNAME=`hostname`
    TITLE="Mac Update Notice" 
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
          \"text\": \"\`\`\`\n${MESSAGE}\n\`\`\`\"
        }
      ],
    }" \
    ${WEBHOOK_URL}
}

## main
updateBrew
updateGcloud
message=`cat /tmp/update_*.txt`
slackMessageBasic "$message"
