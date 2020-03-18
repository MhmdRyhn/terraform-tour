resource "aws_sqs_queue" "first-fifo-queue" {
  name                        = "first-queue.fifo"
  fifo_queue                  = true
  content_based_deduplication = true

  tags = {
    Name        = "fisrt-fifo-queue"
    Environment = "Dev"
  }
}
