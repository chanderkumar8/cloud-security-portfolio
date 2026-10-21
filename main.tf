provider "aws" {
  region = "us-east-1"
}

# CONFIGURING AN INSECURE ENTERPRISE DATABASE
resource "aws_db_instance" "insecure_db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = "company_records"
  username             = "admin"
  password             = "Password123!" # Hardcoded credentials risk
  
  # The Security Flaw: Exposing the database directly to the public internet
  publicly_accessible  = true 
}

