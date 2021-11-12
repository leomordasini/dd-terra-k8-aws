#! /bin/bash

# this will install terraform in the cloud shell
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
mkdir ~/bin
ln -s ~/.tfenv/bin/* ~/bin/
tfenv install latest
tfenv use latest

# this will create a terraform.tfvars file for cloud shell
cat > terraform.tfvars <<EOF
region          = "us-east-1"
cluster_name    = "my-eks-cluster"
instance_type   = "t2.small"
EOF

terraform init
