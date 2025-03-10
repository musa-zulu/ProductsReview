# Products review

## Infrastructure as Code

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
