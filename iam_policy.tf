resource "aws_iam_policy" "sqs_receive_message" {
  name        = "sqs_receive_message"
  path        = "/"
  description = "SQS Queue Policy"

  policy = <<EOF
{
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Actions" : [
        "sqs:ReceiveMessage"
      ],
      "Effect" : "Allow",
      "Resource" : "*"
    }
  ]
}
EOF
}
