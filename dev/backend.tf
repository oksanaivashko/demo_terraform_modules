terraform {
  backend "s3" {
    bucket         = "terraform-backend-oksana"
    region         = "us-west-2"
    key            = "demo_modules_dev/backend/terrafrom.rfstate"
    dynamodb_table = "terraform-state-lock"
  }
}