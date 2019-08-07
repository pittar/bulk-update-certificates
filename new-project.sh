#!/bin/bash

oc new-project $1

# Label the new project.
oc label namespace $1 requires-ca-bundle=true

# Create the certificate secret.
oc create secret generic ca-bundle --from-file=ca.crt=ca.crt --type=opaque
