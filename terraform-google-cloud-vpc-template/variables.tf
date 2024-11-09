#........................................... Provider Block ............................................#
/*
variable "project_id" {
    #default     = "reference-host-prj"
}
variable "access_token" {
    sensitive   = true
}

#......................................... Projects Creation ...........................................#

variable "projects" {
    sensitive   = false
}

#.......................................... Billing Budget .............................................#

variable "billing_budget" {
    sensitive   = false
}

#........................................... Project APIs ..............................................#

variable "apis" {
    sensitive   = false
}
*/
#.............................................. VPC ....................................................#

variable "vpc" {
    type = any
    sensitive   = false
}

#............................................ VPC Subnet ...............................................#

variable "subnets" {
    type = any
    sensitive = false
}

#........................................... VPC Firewall ..............................................#

variable "firewall" {
    type = any
    sensitive   = false
}

#............................................ VPC Peering ..............................................#
/*
variable "vpc_peering" {
    sensitive   = false
}

#........................................... Compute Route .............................................#

variable "route" {
    sensitive   = false
}

*/
