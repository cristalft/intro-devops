resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "platzi-mis-despliegues-automaticos-con-terraform-00"
} 
resource "aws_s3_bucket" "terraformstate" {
  bucket = "platzi-terraform-state-00"
} 
