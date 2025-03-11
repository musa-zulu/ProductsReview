param location string = resourceGroup().location

var uniqueId = uniqueString(resourceGroup().id)

module appService 'modules/compute/appservice.bicep' = {
  name: 'apiDeployment'
  params: {
    location: location
    appServicePlanName: 'plan-api-${uniqueId}'
    appName: 'api-${uniqueId}'
  }
}
