#/bin/sh
export OLD_TASK_ID=$(/usr/local/aws/bin/aws ecs list-tasks --cluster KrugerClusterDocker --desired-status RUNNING --family hola_mundo_task | egrep "task/" | sed -E "s/.*task\/(.*)\"/\1/")
echo $OLD_TASK_ID
/usr/local/aws/bin/aws ecs stop-task --cluster KrugerClusterDocker --task $OLD_TASK_ID