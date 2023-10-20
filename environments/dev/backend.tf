terraform {
  backend "s3" {
    bucket         = "tf-backend-oksana"
    region         = "us-east-1"
    key            = "demo_modules_dev/backend/terrafrom.rfstate"
    dynamodb_table = "terraform-backend"
  }
}