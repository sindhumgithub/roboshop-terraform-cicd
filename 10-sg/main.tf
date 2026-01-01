module "sg" {
    count = length(var.sg_names)
    source = "git:https://github.com/sindhumgithub/roboshop-dev-infra.git?ref:master"
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_names[count.index] #mongodb, redis, mysql, rabbitmq
    sg_description = "created for ${var.sg_names[count.index]}"
    vpc_id = local.vpc_id
}