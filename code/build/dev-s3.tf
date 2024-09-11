provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "3fc318ad-ae00-44c7-a3e8-b365f6195df4"
    git_commit           = "e65edbd12dca5461a94619d027b968047aececad"
    git_file             = "code/build/dev-s3.tf"
    git_last_modified_at = "2024-09-11 16:30:52"
    git_last_modified_by = "tprendervill+9dso@paloaltonetworks.com"
    git_modifiers        = "tprendervill+9dso"
    git_org              = "devsecops-workshop-sep24"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
