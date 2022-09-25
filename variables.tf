
variable "health_check" {
   type = map(string)
   default = {
      "timeout"  = "10"
      "interval" = "20"
      "path"     = "/"
      "port"     = "80"
      "unhealthy_threshold" = "2"
      "healthy_threshold" = "3"
    }
}

variable "tags" {
    default = {
    sysId        = "6f1bb632-da38-4e1f-86c3-6065f8662f88"
    }
}

variable "region"{
   default = {
      region     = "us-west-2"
   }
}