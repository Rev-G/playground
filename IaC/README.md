# IaC Policy Scanning

A mix of opa and checkov.  Really like checkov actually.

```shell
terraform init
terraform plan --out tfplan.binary
terraform show -json tfplan.binary > tfplan.json
```

`opa eval --format pretty --data policy/policy.rego --input tfplan.json "data.terraform"`

https://www.checkov.io/7.Scan%20Examples/Terraform%20Plan%20Scanning.html

`checkov -f tfplan.json --external-checks-dir ./policy -c CKV2_PALMER_1`

`checkov -f tfplan.json --external-checks-dir ./policy`
