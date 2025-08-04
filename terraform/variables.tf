variable "project_name" {
    default = "roboshop"
  
}
variable "env" {
    default = "dev"
  
}
variable "common_tags" {
    default = {
    project = "roboshop"
    component = "catalogue"
    terraform = true
    environment = "dev"
    }
  
}
variable "app_version" {
  # this is just to test variable is flowing from terraform to shell and then to ansible
  default = "100.100.100"
}
variable "domain_name" {
    default = "joindevops.store"
  
}


variable "zone_id" {
    default = "Z08250303NQOMHGBRQZIZ"
  
}