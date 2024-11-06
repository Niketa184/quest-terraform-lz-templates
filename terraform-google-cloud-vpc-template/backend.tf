#.................................... Terraform Backend ....................................#

terraform {
backend "gcs" {
  bucket = "terraform-learning-bucket"
  prefix = "tf/state"
}
}
