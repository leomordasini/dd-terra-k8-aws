variable "region" {
    description = "the AWS region you want to target the deployment"
}
variable "cluster_name" {
    description = "The name of the EKS cluster" 
}
variable "instance_type" {
    description = "The type of AWS instance to deploy EKS with"
}