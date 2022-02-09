param location string = resourceGroup().location
param acrName string = 'pardus'
param acrSku string = 'Basic'
param aksName string = 'pardus'

module ACR 'modules/acr.bicep' = {
  name: 'ACR'
  params: {
    location: location
    acrName: acrName
    acrSku: acrSku
  }
}

module aks 'modules/aks.bicep' = {
  name: 'AKS'
  params: {
    location: location
    clusterName: aksName
  }
}
