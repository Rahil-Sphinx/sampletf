terraform {
  backend "s3" {
    bucket         = "terraform-stateee-${var.environment}"
    key            = "terraform/${var.environment}.tfstate"
    region         = var.region
    dynamodb_table = "terraform-state-locking-${var.environment}"
  }
}
