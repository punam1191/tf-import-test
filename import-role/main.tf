locals {
    roles = ["punam-tf-role","test-import-role"]
}

resource "aws_iam_role" "import-roles" {
    for_each = toset(local.roles)
    name = each.value
    assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
    description = "Allows EC2 instances to call AWS services on your behalf."
    tags = {}

}