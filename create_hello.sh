#!/usr/bin/env sh

rm -f /tmp/veracioux_hello.cast
asciinema rec -c './hello.sh' /tmp/veracioux_hello.cast
cat /tmp/veracioux_hello.cast | svg-term --out hello.svg
# Tweak colors
sed -e 's/#282d35/#00000000/g' \
    -e 's/#71bef2/#6980fa/g' \
    -e 's/#d290e4/#7c4dff/g' \
    -e 's/#b9c0cb/#78909c/g' \
    -e 's/#dbab79/#ec407a/g' \
    -i hello.svg
sed -i -e '' hello.svg
