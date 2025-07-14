resource "aws_instance" "docker_host" {
  ami                         = "ami-04b4f1a9cf54c11d0"  # Official Ubuntu Server 22.04 LTS AMI (HVM, SSD-backed) for us-east-1
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  key_name                    = aws_key_pair.zero_node_key.key_name
  associate_public_ip_address = true

  tags = {
    Name        = "docker-ansible-node"
    Project     = "docker-bootstrap"
    Environment = "dev"
  }
}
resource "aws_key_pair" "zero_node_key" {
  key_name   = "Zero_Node_Key" 
  public_key = file("/home/ubuntu/projects/ssh.pub") 
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH access for Ansible"
  vpc_id      = "sg-0325e0fb5c34df152"

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Or restrict to your IP for security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-ssh"
  }
}