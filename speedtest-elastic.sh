#!/bin/bash

speedtestdirectory=/opt/speedtest-cli
es_url=localhost
number=$RANDOM;
let "number %= 9";
let "number = number + 1";
range=10;
for i in {1..18}; do
  r=$RANDOM;
  let "r %= $range";
  number="$number""$r";
done;
json=`"$speedtestdirectory"/speedtest-cli --secure --json`
#echo $number
#echo $json
curl -XPUT -H 'Content-Type: application/json' http://"$es_url":9200/speedtest/test/"$number" -d"$json"
