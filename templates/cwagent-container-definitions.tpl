[
  {
    "name": "cloudwatch-agent",
    "image": "amazon/cloudwatch-agent:${image_tag}",
    "environment": [
      {
        "name": "CW_CONFIG_CONTENT",
        "value": "${ssm_cloudwatch_config}"
      }
    ],
    "mountPoints": ${mount_points},
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-create-group": "True",
        "awslogs-stream-prefix": "ecs",
        "awslogs-group": "/ecs/${app_name}",
        "awslogs-region": "${log_group_region}"
      }
    }
  }
]