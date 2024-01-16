#!/bin/bash

clear

resize -s 30 150
sleep 1
clear

echo "Bash script starting..."
printf "\n"

sleep 6

echo "> Your computer will automatically start opening windows and applications,"
echo "> and focus away from this terminal screen, but you'll have to come back"
echo "> to this screen to read some instructions."
echo ""

sleep 6

echo "Don't touch your computer now."
echo ""

sleep 6

echo "Quitting slack if it's already open..."
# Quit Slack
osascript -e 'quit app "Slack"'

sleep 2

echo "Opening Slack with developer menu enabled..."
SLACK_COMMAND='SLACK_DEVELOPER_MENU=true open /Applications/Slack.app'
eval "$SLACK_COMMAND"

# Wait for Slack to launch (adjust sleep time if needed)
sleep 6

# Focus on Slack
osascript -e 'tell application "Slack" to activate'

sleep 1

echo "Opening Slack console..."
# Type Cmd + Option + I in Slack
osascript -e 'tell application "System Events" to tell process "Slack" to keystroke "i" using {command down, option down}'

# Wait for the developer console to open (adjust sleep time if needed)
sleep 5

osascript -e "set volume output volume 20"
say "Once you're done granting permissions, go back to terminal screen."
sleep 2

printf "\n\nFirst: On the top menu bar, click \"Console\" on the Developer Tools window that poppped up.\n"
printf "Then: please enter the following JavaScript command in the Slack console (if it doesn't work the first time, just enter it again):\n"
printf "↓↓↓↓↓ ↓↓↓↓↓ ↓↓↓↓↓\n\n"

printf "localStorage.setItem(\"localConfig_v2\", localStorage.getItem(\"localConfig_v2\").replace(/\"is_unified_user_client_enabled\":true/g, '\"is_unified_user_client_enabled\":false')); location.reload();"

printf "\n\n"

printf "↑↑↑↑↑ ↑↑↑↑↑ ↑↑↑↑↑\n\n"

printf "Once you've entered that command above, you may close the Slack console that popped up\n"
printf "and this terminal session where you've been seeing these messages. Note that you'll have\n"
printf "to run this script every time you *Quit* slack. Just closing the window is fine.\n\n"

printf "Script execution complete.\n\n"
