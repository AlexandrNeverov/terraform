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
            source = "hashcorp/random"
            version = ">= 3.1.0"}
        local = {
            source = "hashcorp/local"
            version = ">=2.1.0"}
        tls = {
            source  = "hashicorp/tls"
            version = "=> 3.1.0"
        }
    }
}