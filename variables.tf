variable "AWS_REGION" {
  default = "us-east-1"
}
variable "PATH_TO_PRIV_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUB_KEY" {
  default = "mykey.pub"
}
variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}

variable "JENKINS_VERSION" {
  default = "2.375.1"
}

variable "TERRAFORM_VERSION" {
  default = "0.12.23"
}

variable "APP_INSTANCE_COUNT" {
  default = "0"
}
