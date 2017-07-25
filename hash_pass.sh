#!/bin/bash

# The following script takes a SHA256 hash and a cleartext guess.
# It then checks to see if the guess matches the hash.

guess="test"
pwhash="f2ca1bb6c7e907d06dafe4687e579fce76b37e4e93b7605022da52e6ccc26fd2"
try=$(echo $guess | sha256sum | awk '{print $1}') # | = pipe
if [ "$try" == "$pwhash" ] ; then
        echo "The password is $guess"
else
        echo "The password is not $guess"
fi
