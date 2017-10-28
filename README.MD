Quick script I knocked up to track speedtests of my NBN using crontab, speedtest-cli and elasticsearch.

Requires elasticsearch setup on localhost:9200.

Install https://github.com/sivel/speedtest-cli to /opt as per instructions in their readme.

You could also just point the curl in the script to your es on another box and also could have speedtest-cli in another directory, just edit the variables in the script.
