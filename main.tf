provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket"    # Change this
    key    = "Gina-NTU-CIE-Mod3-2.tfstate" # Change this
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "Gina-NTU-CIE-Mod3-2-s3-bucket" # Set your bucket name here
}
