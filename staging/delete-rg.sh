#!/bin/bash

RESOURCE_GROUP_NAME=tfstate-rg

# Delete the staging rg without confirming.
az group delete --name $RESOURCE_GROUP_NAME --yes --no-wait