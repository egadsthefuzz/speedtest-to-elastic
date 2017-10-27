#!/bin/bash


number=$RANDOM;
let "number %= 9";
let "number = number + 1";
range=10;
for i in {1..18}; do
  r=$RANDOM;
  let "r %= $range";
  number="$number""$r";
done;
json=`/opt/speedtest-cli/speedtest-cli --secure --json`
#echo $number
#echo $json
curl -XPUT -H 'Content-Type: application/json' http://localhost:9200/speedtest/test/"$number" -d"$json"
