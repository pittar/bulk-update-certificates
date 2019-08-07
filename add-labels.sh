#!/bin/bash

oc label namespace $1 requires-ca-bundle=true
