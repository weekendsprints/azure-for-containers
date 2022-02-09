#!/bin/bash

export RESOURCE_GROUP="pardus-rg"
export LOCATION="westeurope"

echo "Deploying resources to ... "
echo "Resource group:   $RESOURCE_GROUP"
echo "Location:         $LOCATION"

az group create -n $RESOURCE_GROUP -l $LOCATION

echo "Resource group $RESOURCE_GROUP has been created/updated"

az deployment group create \
    --template-file "./main.bicep" \
    --parameters "./parameters.json" \
    --resource-group $RESOURCE_GROUP \