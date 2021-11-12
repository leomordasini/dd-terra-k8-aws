#! /bin/bash

print_message(){ 
    "First step passed"
}

# this will install terraform in the cloud shell
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
mkdir ~/bin
ln -s ~/.tfenv/bin/* ~/bin/
tfenv install latest
tfenv use latest

print_message(){ 
    "Second step passed"
}

# this will create a terraform.tfvars file for cloud shell
cat > provider.tf <<EOF
region          = "us-east-2"
cluster_name    = "my-eks-cluster"
instance_type   = "t2.small"
EOF

print_message(){ 
    "Third step passed"
}

terraform init

print_message(){ 
    "Fourth step passed"
}