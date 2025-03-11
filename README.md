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
az ad sp create-for-rbac --name "GitHub-Actions-SP"
                         --role contributor \
                         --scopes /subscriptions/yoursubscriptionidgoeshere \
                         --sdk-auth
```
