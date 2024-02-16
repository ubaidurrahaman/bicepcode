@description('Location for all resources.')
param location string = 'eastus'
param storageAccountType string = 'Standard_ZRS'
param storageAccountName string = 'ubaidstorageaccount'
// param storageContainerName string
//@description('Key Vault ID')
//param addKeysToVault bool
param tags object = {}
//@description('Key Vault ID')
//param keyVaultName string
 
resource storageAccountResource 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: storageAccountName
  location: location
  tags: tags
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {
 
  }
 
}
