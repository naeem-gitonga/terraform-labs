resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-test-bucket-ng-329487"
  tags = {
    will_delete = true
    working     = "yes-what-the-dea-go"
    tagging = "yet another tag"
  }
}

