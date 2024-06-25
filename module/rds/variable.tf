variable "allocated_storage" {
    description = "...database storage"
    default = 10

}

variable "db_name" {
    description = "..name of the initial database"
    default = "devdb"

}

variable "identifier" {
    default = "dev-database"

}

variable "engine" {
    default = "mysql"

}

variable "engine_version" {
    default = "5.7"

}

variable "instance_class" {
    default = "db.t3.micro"

}

variable "username" {
  sensitive = true
}

variable "password" {
  sensitive = true
}

variable "parameter_group_name" {
    default = "default.mysq15.7"

}

variable "skip_final_snapshot" {
    default = true

}

variable "backup_retention_period" {
    description = "..how long backup should be kept"
    default = 0

}

variable "region" {
    default = "us-east-1"

}