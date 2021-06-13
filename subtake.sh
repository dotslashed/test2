#!/bin/bash

FILE_NAME=$1

cat FILE_NAME | while read dom do; do host $dom | grep  "alias" | awk '{print $NF}';done | while read cnams do; do host $cnams | if grep -qo "has address";then echo NOT_VULNERABLE; else echo $cnam--for--$dom--DIDNO
T_RESOLVE; fi; done
