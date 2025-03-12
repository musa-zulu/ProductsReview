# Products review

## Infrastructure as Code
If you don't want to deploy using a workflow but deploy via cli
### Download Azure CLI
https://learn.microsoft.com/en-us/cli/azure/

### Log in into Azure
```bash
az login
```

### Create Resource Group

```bash
az group create --name productsreview-dev --location southafricanorth
```

### Run bicep script

```bash
az deployment group what-if --resource-group productsreview-dev --template-file infrastructure/main.bicep
```


### Deployment pipeline
#### Create User for GH Actions

```bash
az ad sp create-for-rbac --name "GitHub-Actions-SP" \
                         --role contributor \
                         --scopes /subscriptions/yoursubscriptionidgoeshere \
                         --sdk-auth
```

#### Configure a federated identity credential on an app
https://learn.microsoft.com/en-gb/entra/workload-id/workload-identity-federation-create-trust?pivots=identity-wif-apps-methods-azp#configure-a-federated-identity-credential-on-an-app

## Get Azure Publish Profile

```bash
az webapp deployment list-publishing-profiles --name api-name-from-azure(e.g api-sggrppqzz3oqg) --resource-group products-review-dev --xml
```


