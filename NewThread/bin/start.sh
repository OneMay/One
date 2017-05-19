#!/bin/bash
#发布项目&启动jetty
#如果你的机器没有maven，请执行这个脚本
#
#1. ..
#
#
#
. /etc/profile ~/.bashrc

cd ..

cp official-web/target/*.war tools/jetty/webapps -r

cd tools/jetty

java -jar start.jar

cd -