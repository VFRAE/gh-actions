#Set-ADUser -Identity $account.name -LogonWorkstations $account.logonTo


# Import the YAML file
$serviceAccounts = (Get-Content -Path "./gh-actions/yamls/parameter.yaml" | ConvertFrom-Yaml).serviceAccounts

# Example: Loop through the service accounts
foreach ($account in $serviceAccounts) {
    Write-Host "Set-ADUser -Identity $($account.name) -LogonWorkstations $($account.logonTo)"
}

