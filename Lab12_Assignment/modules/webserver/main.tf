# Create unique key pair
resource "aws_key_pair" "webserver_key" {
  key_name   = "${var.env_prefix}-${var.instance_name}-${var.instance_suffix}-key"
  public_key = var.public_key
}
# Read the user data script
data "local_file" "user_data_script" {
  filename = var.script_path
}
# EC2 instance
resource "aws_instance" "webserver" {
  ami                    = "ami-05524d6658fcf35b6"
  instance_type          = var.instance_type
  availability_zone      = var.availability_zone
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = aws_key_pair.webserver_key.key_name
  user_data              = data.local_file.user_data_script.content
  associate_public_ip_address = true
  tags = merge(
    var.common_tags,
    {
      Name = "${var.env_prefix}-${var.instance_name}-${var.instance_suffix}"
    }
  )
}


