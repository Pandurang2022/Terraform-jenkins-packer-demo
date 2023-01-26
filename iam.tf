resource "aws_iam_role" "jenkins-role" {
  name = "jenkins-role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
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

  tags = {
    tag-key = "jenkins-role"
  }
}
resource "aws_iam_instance_profile" "jenkins-role" {
  name = "jenkins-role"
  role = aws_iam_role.jenkins-role.name
}
resource "aws_iam_role_policy" "admin-policy" {
  name = "jenkins-admin-role-policy"
  role = aws_iam_role.jenkins-role.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = ["*"],
        Effect   = "Allow",
        Resource = ["*"]
      }
    ]
  })
}
