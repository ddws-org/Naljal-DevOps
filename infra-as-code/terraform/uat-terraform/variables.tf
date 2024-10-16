#
# Variables Configuration. Check for REPLACE to substitute custom values. Check the description of each
# tag for more information
#

variable "vpc_id" {
  description = "VPC-naljal"
  default = "vpc-053cd69a368474226"
}

variable "existing_private_subnet_ids" {
  type        = list(string)
  description = "private-subnets-naljal"
  default = ["subnet-0c49b65fb9bba838b","subnet-0551a7e5b480edd51"]
}

variable "existing_public_subnet_ids" {
  type        = list(string)
  description = "public-subnets-naljal"
  default = ["subnet-083a03b3170a434f3","subnet-0cf0ab8a1626257e8"]
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  default = "uat" #REPLACE
}

variable "vpc_cidr_block" {
  description = "CIDR block"
  default = "192.168.0.0/16"
}



variable "network_availability_zones" {
  description = "Configure availability zones configuration for VPC. Leave as default for India. Recommendation is to have subnets in at least two availability zones"
  default = ["ap-south-1b", "ap-south-1a"] #REPLACE IF NEEDED
}

variable "availability_zones" {
  description = "Amazon EKS runs and scales the Kubernetes control plane across multiple AWS Availability Zones to ensure high availability. Specify a comma separated list to have a cluster spanning multiple zones. Note that this will have cost implications"
  default = ["ap-south-1b"] #REPLACE IF NEEDED
}

variable "kubernetes_version" {
  description = "kubernetes version"
  default = "1.29"
}

variable "instance_type" {
  description = "eGov recommended below instance type as a default"
  default = "r5ad.large"
}

variable "override_instance_types" {
  description = "Arry of instance types for SPOT instances"
  default = ["r5a.large", "r5ad.large", "r5d.large", "m4.xlarge"]
  
}

variable "number_of_worker_nodes" {
  description = "eGov recommended below worker node counts as default"
  default = "4" #REPLACE IF NEEDED
}

variable "ssh_key_name" {
  description = "ssh key name, not required if your using spot instance types"
  default = "uat-ssh-key" #REPLACE
}


variable "db_name" {
  description = "RDS DB name. Make sure there are no hyphens or other special characters in the DB name. Else, DB creation will fail"
  default = "naljaluatdb"
}



#DO NOT fill in here. This will be asked at runtime
#variable "db_password" {}

variable "db_instance_endpoint" {
  default = "naljal-uat-db.c7a9hnasyeda.ap-south-1.rds.amazonaws.com:5432"
}

variable "db_instance_name" {
  description = "The database name"
  default = "naljal-uat-db"
}

variable "existing_rds_identifier" {
  description = "naljal-db"
  default = "naljal-uat-db"
}

variable "existing_rds_security_group_id" {
  description = "rds-sg"
  default = "sg-0b5b419efc98c700a"
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCc0hC05ZhJZKcEtWVJa9nFqCiC86IvRhGm7lVQtoTj/0Mua6ZkhZ+5axs/59wMDUHDSiaEW5q6TQDDPbhWcXudUopDte2qZwQgkbglIRIxoAurdb1BSTTH77yYTkruEmChI2cfaZ77pCe/TFZ/JnUZf8C9ZRZ/fFlbwbcpFPaK8oEpxzGUQDV8NcPk636vD85wMqi5BDCAWWt5wAj7K8/VGdVDpgxgIDSz+2htGB5Ips22Vr4xVrmIGPPCQ6HTHY5phIprUP2A7DyHR5NRJLvVkiU6CQKgqLr+ESPdlaJQNooo397Yte0FupH2hWE74YSp2zUBHZSeupBj4PfpwiTl"
  description = "ssh key"
}

## change ssh key_name eg. digit-quickstart_your-name



