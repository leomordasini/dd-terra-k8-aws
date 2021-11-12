#! /bin/bash

# this will install terraform in the cloud shell
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
mkdir ~/bin
ln -s ~/.tfenv/bin/* ~/bin/
TFENV_AUTO_INSTALL=false terraform plan
tfenv install

# this will create a terraform.tfvars file for cloud shell
cat > provider.tf <<EOF
region          = "us-east-2"
cluster_name    = "my-eks-cluster"
instance_type   = "t2.small"
EOF

terraform init