# ALB main.tf

resource "aws_lb" "this" {
	name               = var.name
	internal           = var.internal
	load_balancer_type = "application"
	subnets            = var.subnets
	security_groups    = var.security_groups
	tags               = var.tags
}

# Example listener (HTTP)
resource "aws_lb_listener" "http" {
	load_balancer_arn = aws_lb.this.arn
	port              = 80
	protocol          = "HTTP"
	default_action {
		type = "fixed-response"
		fixed_response {
			content_type = "text/plain"
			message_body = "OK"
			status_code  = "200"
		}
	}
}
# This Terraform file will define the AWS Application Load Balancer (ALB) resource and related components.
