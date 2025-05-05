location = "eu-west-2"

# VPC & Networking
vpc_name                  = "hypertrio-vpc"
vpc_cidr_block            = "10.0.0.0/16"
public_subnet_cidrs       = ["10.0.1.0/24", "10.0.2.0/24"]
subnet_availability_zones = ["eu-west-2a", "eu-west-2b"]

# ECS & App
image_uri = "206218410875.dkr.ecr.eu-west-2.amazonaws.com/hypertrio:latest"
ecs_name       = "hypertrio-ecs"
ecs_family     = "hypertrio-task"
service_name   = "hypertrio-service"
exec_role      = "ecsTaskExecutionRole" # replace with your actual IAM role ARN
cpu            = 512
memory         = 1024

# ALB
alb_name = "hypertrio-alb"
tg_name  = "hypertrio-target-group"


# Route 53 / ACM
dns_name = "app.hypertrio.ayubmacalim.com"
dns_hosted_zone = "hypertrio.ayubmacalim.com"