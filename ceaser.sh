#!/bin/bash
# The following script will solve a simple Caesar Cipher via an exhaustive search
# (the cleartext is bigbrotheriswatchingyou)

# FOR FUTURE REFERENCE
# This script cycles through all letters in the alphabet changing each letter
# with every other letter in the alphabet. This only works for basic ceaser

# cipher='ipniyvaolypzdhajopunfvb'
# constchars='abcdefghijklmnopqrstuvwxyz'
# chars='abcdefghijklmnopqrstuvwxyz'
# for i in {0..27}
# do
#         printf "_________START LOOP $i __________\n"
#         printf "Cipher: \t\t\t$cipher\n"
#         printf "Original cipher:\t\t"
#         echo "$cipher" | tr $chars $constchars
#         printf "New cipher: \t\t\t$cipher\n"
#         first=${chars:0:1} # Gets the first letter of char
#         rmfirst=${chars:1} # pos 1 forward
#         printf "rmFirst:\t\t\t$rmfirst\n"
#         chars="$rmfirst$first"
#         printf "New chars:\t\t\t$chars\n"
#         printf "________END LOOP $i _____________\n\n"
# done

cipher='ipniyvaolypzdhajopunfvb'
constchars='abcdefghijklmnopqrstuvwxyz'
chars='abcdefghijklmnopqrstuvwxyz'
for i in {0..26}
do
        try=$(echo "$cipher" | tr $chars $constchars)
        first=${chars:0:1} # Gets the first letter of char
        rmfirst=${chars:1} # pos 1 forward
        chars="$rmfirst$first"
        if [ $try = "bigbrotheriswatchingyou" ] ; then
                echo "The password has been found: ($try) after $(($i + 1)) attempts"
        fi
done
