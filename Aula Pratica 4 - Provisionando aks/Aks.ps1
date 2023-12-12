# Login no azure
Connect-AzAccount

# Criar Grupo de Recursos    
New-AzResourceGroup -Name "rg-aks-pwsh" -Location "East US"

# Criar AKS
New-AzAksCluster -ResourceGroup "rg-aks-pwsh" -Name "aks-powershell" -NodeCount 1

# Listar Cluster do AKS
Get-AzAksCluster

# Instalar Kubectl
Install-AzAksKubectl

# Importar credenciais
Import-AzAksCredential -ResourceGroup "rg-aks-pwsh" -Name "aks-powershell"

# Listar nodes com Kubectl
kubectl get nodes

# Excluir AKS
Remove-AzAksCluster -ResourceGroup "rg-aks-pwsh" -Name "aks-powershell"