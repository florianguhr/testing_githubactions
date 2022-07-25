# source https://www.awstutorials.cloud/post/tutorials/terraform-fargate/
output "loadbalancer-address" {
    value = "${module.ecs-fargate.aws_lb_lb_dns_name}"
}