resource "aws_sqs_queue" "main" {
    name = "${var.env}-sqs"
    tags = {
        Environment = var.env
        Name = format("%s-sqs",var.env)
    }  
}