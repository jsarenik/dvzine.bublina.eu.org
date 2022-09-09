#!/bin/sh

find public -name '*.html' \
  | while read i
do
  sed -Ei \
    -e 's|https?://DVzine.org.*"|/"|g' \
    -e 's|https?://dvzine.org.*"|/"|g' \
    -e 's|https?://www.DVzine.org.*"|/"|g' \
    -e 's|https?://www.dvzine.org.*"|/"|g' \
    -e 's|/index.html"|/"|g' \
    -e 's|http://|https://|g' \
    $i
done
