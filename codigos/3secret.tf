

resource "aws_secretsmanager_secret" "dockerhubconnection" {
  kms_key_id = "arn:aws:kms:us-east-1:257104275350:key/a42929e6-7235-4a7a-810b-5382d1983c32" 
  name = "dockerhub-connection"
  description = "Master password for docker hub"
}

resource "aws_secretsmanager_secret_version" "dockerhubconnection" {
  secret_id = aws_secretsmanager_secret.dockerhubconnection.id
  secret_string = jsonencode({
    #Username = "jaivic"
    Username = "cristalft"
    #Password = "Jaivic123."
  })
}