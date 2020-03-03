terraform {
  backend "s3" {
    bucket = "terraform-ganesh123"
    key    = "terraform/dev/ecs-bulbapp"
    region = "us-east-1"
    profile = "ganesh"
  }
}
