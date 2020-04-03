#!/usr/bin/env bash

echo "set ROOT_PASSWORD to ***"
sed -i "s/{{ROOT_PASSWORD}}/${ROOT_PASSWORD}/" sites/common_site_config.json

echo "set ADMIN_PASSWORD to ***"
sed -i "s/{{ADMIN_PASSWORD}}/${ADMIN_PASSWORD}/" sites/common_site_config.json

echo "set DB_HOST to ${DB_HOST}"
sed -i "s/{{DB_HOST}}/${DB_HOST}/" sites/common_site_config.json

echo "set DB_NAME to ${DB_NAME}"
sed -i "s/{{DB_NAME}}/${DB_NAME}/" sites/site1.local/site_config.json

echo "set DB_PASSWORD to ***"
sed -i "s/{{DB_PASSWORD}}/${DB_PASSWORD}/" sites/site1.local/site_config.json

echo "set ENCRYPTION_KEY to ***"
sed -i "s/{{ENCRYPTION_KEY}}/${ENCRYPTION_KEY}/" sites/site1.local/site_config.json

echo "set HOST_NAME to ${HOST_NAME}"
sed -i "s/{{HOST_NAME}}/${HOST_NAME}/" sites/site1.local/site_config.json

DEVELOPER_MODE=${DEVELOPER_MODE:-"0"}
echo "set DEVELOPER_MODE to ${DEVELOPER_MODE}"
sed -i "s/{{DEVELOPER_MODE}}/${DEVELOPER_MODE}/" sites/site1.local/site_config.json

echo "set HOST_NAME to ${HOST_NAME}"
sed -i "s~{{HOST_NAME}}~${HOST_NAME}~" sites/site1.local/site_config.json

WORKER=${WORKER:-"4"}
echo "set WORKER to ${WORKER}"
sed -i "s/{{WORKER}}/${WORKER}/" /etc/supervisor/conf.d/supervisord.conf

MAX_FILE_SIZE=${MAX_FILE_SIZE:-"10485760"}
echo "set MAX_FILE_SIZE to ${MAX_FILE_SIZE}"
sed -i "s/\"{{MAX_FILE_SIZE}}\"/${MAX_FILE_SIZE}/" sites/common_site_config.json

IGNORE_CSRF=${IGNORE_CSRF:-"false"}
echo "set IGNORE_CSRF to ${IGNORE_CSRF}"
sed -i "s/\"{{IGNORE_CSRF}}\"/${IGNORE_CSRF}/" sites/common_site_config.json

SCHEDULER_INTERVAL=${SCHEDULER_INTERVAL:-"360"}
echo "set SCHEDULER_INTERVAL to ${SCHEDULER_INTERVAL}"
sed -i "s/{{SCHEDULER_INTERVAL}}/${SCHEDULER_INTERVAL}/" sites/common_site_config.json

REDIS_SOCKETIO=${REDIS_SOCKETIO:-"redis-socketio:12000"}
echo "set REDIS_SOCKETIO to ${REDIS_SOCKETIO}"
sed -i "s/{{REDIS_SOCKETIO}}/${REDIS_SOCKETIO}/" sites/common_site_config.json

REDIS_CACHE=${REDIS_CACHE:-"redis-cache:13000"}
echo "set REDIS_CACHE to ${REDIS_CACHE}"
sed -i "s/{{REDIS_CACHE}}/${REDIS_CACHE}/" sites/common_site_config.json

REDIS_QUEUE=${REDIS_QUEUE:-"redis-queue:11000"}
echo "set REDIS_QUEUE to ${REDIS_QUEUE}"
sed -i "s/{{REDIS_QUEUE}}/${REDIS_QUEUE}/" sites/common_site_config.json

MAX_REPORTS_PER_USER=${MAX_REPORTS_PER_USER:-"3"}
echo "set MAX_REPORTS_PER_USER to ${MAX_REPORTS_PER_USER}"
sed -i "s/{{MAX_REPORTS_PER_USER}}/${MAX_REPORTS_PER_USER}/" sites/common_site_config.json

echo "set bench values"
bench set-mariadb-host "${DB_HOST}"
bench set-admin-password "${ADMIN_PASSWORD}"
