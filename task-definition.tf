/*
data "aws_ecs_task_definition" "default" {
  task_definition = "${aws_ecs_task_definition.default.family}"
}
*/

resource "aws_ecs_task_definition" "default" {
    family                = "bulbapp"
    container_definitions = <<DEFINITION
[
  {
    "name": "bulbapp",
    "image": "ganez/helloapp-bulbapp:v1",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "memory": 512,
    "cpu": 1024
  }
]
DEFINITION
}
