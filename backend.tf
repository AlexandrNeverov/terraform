terraform {
  backend "s3" {
    bucket         = "terraform-backend-zero-1752515536"
    key            = "state/terraform.tfstate"             
    region         = "us-east-1"
    use_lock_table = false                                 
  }
}