terraform {
    required_version = ">= 1.0.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>3.0"}
        http = {
            source  = "hashicorp/http"
            version = ">= 2.1.0"}
        random = {
            source = "hashicorp/random"
            version = ">= 3.1.0"}
        local = {
            source = "hashicorp/local"
            version = ">=2.1.0"}
        tls = {
            source  = "hashicorp/tls"
            version = ">= 3.1.0"
        }
    }
}

resource "tls_private_key" "generated" {
    algoritm = "RSA"
}

resource "local_file" "private_key_pem" {
    content = tls.private_key_generated.private_key_pem
    filename ="MyAWSkey.pem"
}