#! /bin/bash

# this will create a terraform.tfvars file for cloud shell
cat > provider.tf <<EOF
region          = "us-east-2"
cluster_name    = "my-eks-cluster"
instance_type   = "t2.small"
EOF

terraform init