resource "random_id" "suffix" {
  byte_length = 4
}
resource "aws_instance" "docker_host" {
  ami                         = "ami-04b4f1a9cf54c11d0"
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  key_name                    = aws_key_pair.zero_node_key.key_name
  associate_public_ip_address = true

  tags = {
    Name        = "docker--node"
    Project     = "docker-bootstrap"
    Environment = "dev"
  }
}

resource "aws_key_pair" "zero_node_key" {
  key_name = "${var.key_name}-${random_id.suffix.hex}"
  public_key = file("/home/ubuntu/projects/ssh.pub")
}