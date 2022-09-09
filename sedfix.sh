#!/bin/sh

find public -name '*.html' \
  | while read i
do
  sed -i \
    -e 's|https?://DVzine.org.*"|index.html"|g' \
    -e 's|https?://dvzine.org.*"|index.html"|g' \
    -e 's|https?://www.DVzine.org.*"|index.html"|g' \
    -e 's|https?://www.dvzine.org.*"|index.html"|g' \
    -e 's|http://|https://|g' \
    $i
done
