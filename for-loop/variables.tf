variable "instances"{
    default = [ "cart", "user"]
       # mongodb = "t3.micro"
       # redis = "t3.small"
       # mysql = "t3.micro"
}

variable "zone-id" {
    default = "Z0654896JT7QXFW2AAXW"
}

variable "domain_name" {
    default = "bugata.shop"
}