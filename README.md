# slack-beautify
The new UI for slack is awful. Follow these instructions to revert to the old version.
Only works if you want to go back to old Slack version on Mac Deskstop.

# Instructions
1. Open your terminal.
2. Paste `bash <(curl -s https://raw.githubusercontent.com/ShounakRay/slack-beautify/main/slack_beautify.sh)` and hit enter.
3. Sit tight. Don't click around on your computer as this script runs.
4. Note: *the first time you run this script, you may be asked to provide a permissions to Terminal so it can mess around with Slack. Click OK.*
<img src="permission.png?raw=true" width="250">
5. If you have to provide further permissions on your system, just grant them. You will have to restart from Step 2 if you had to provide any permissions.
6. One instruction will show up on your terminal screen after some time. Be sure to follow it.

And there ya go!

You'll have to run Step 3 (`sudo sh slack_beautify.sh`) every time you **quit** Slack to see the updates.
Just closing the window is fine though.
