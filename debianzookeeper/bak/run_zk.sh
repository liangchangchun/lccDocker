docker run  --privileged=true -itd -p 2181:2181 --user zookeeper -v /data/lccDocker/debianzookeeper/data:/home/docker/usr/local/zookeeper/data -v /data/lccDocker/debianzookeeper/conf:/home/docker/usr/local/zookeeper/conf -v /data/lccDocker/debianzookeeper/logs:/home/docker/usr/local/zookeeper/logs -v /data/lccDocker/debianzookeeper/datalogs:/home/docker/usr/local/zookeeper/datalogs --name zookeeper_zookeeper liangchangchun/debianzookeeper:v2
# Zookeeper的ZOO_LOG_DIR环境变量可以设置Zookeeper的系统日志输出到文件路径，但是配置了ZOO_LOG_DIR环境变量对应的目录也不会有日志文件，还需要配置环境变量ZOO_LOG4J_PROP=INFO,ROLLINGFILE，并且修改log4j.properties的zookeeper.root.logger=INFO, ROLLINGFILE，默认的日志是输出到CONSOLE的。
# http://yangyoupeng-cn-fujitsu-com.iteye.com/blog/1922459
