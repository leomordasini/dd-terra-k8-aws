#! /bin/bash

print "First step passed"

# this will install terraform in the cloud shell
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
mkdir ~/bin
ln -s ~/.tfenv/bin/* ~/bin/
tfenv install
tfenv use <version>

print "Second step passed"

# this will create a terraform.tfvars file for cloud shell
cat > provider.tf <<EOF
region          = "us-east-2"
cluster_name    = "my-eks-cluster"
instance_type   = "t2.small"
EOF

print "Third step passed"

terraform init

print "Final step passed"