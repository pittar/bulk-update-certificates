#!/bin/bash

PROJECT_STRING="$(oc  get projects -l requires-ca-bundle=true -o jsonpath='{range .items[*].metadata}{.name}{"\n"}{end}')"
PROJECTS=($PROJECT_STRING)

for PROJECT in "${PROJECTS[@]}"
do
    oc create secret generic ca-bundle --from-file=ca.crt=ca.crt --type=opaque -n $PROJECT --dry-run -o yaml | oc replace -f -
done

