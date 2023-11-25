resource "aws_iam_user" "user" {
  name = "s3-full-access-user-anandu"
  tags = {
    Project     = "CLOD1003"
    "Created by" = "Anandu prasad" 
  }
}

resource "aws_iam_user_policy" "user_policy" {
  name = "s3-full-access-policy-anandu"
  user = aws_iam_user.user.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = "s3:*",
        Resource = "${aws_s3_bucket.my_bucket.arn}/*",
        Effect   = "Allow",
      },
      {
        Action   = "s3:ListBucket",
        Resource = aws_s3_bucket.my_bucket.arn,
        Effect   = "Allow",
      },
    ],
  })
}
