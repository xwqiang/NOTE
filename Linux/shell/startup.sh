```
#!/bin/sh
#./etc/profile
home=$PWD
min_heap_size="512m"
max_heap_size="512m"
cpath=$CLASSPATH:./bin
for file in lib/*.jar;
do
    cpath=$cpath:$file
done;
export CLASSPATH=$cpath
#echo $CLASSPATH

start()
{
  nohup java -Xms$min_heap_size -Xmx$max_heap_size -XX:PermSize=512m -Xloggc:log/gc.log -XX:+PrintGCTimeStamps -XX:-PrintGCDetails -cp $CLASSPATH com.kuyun.App  > log/app.log  &
  echo $! >log/app.pid
}
stop()
{
  kill  `cat log/app.pid`
}


case $1 in
"restart")
   stop
   start
;;
"start")
   start
;;
"stop")
   stop
;;
*) echo "only accept params start|stop|restart" ;;
esac
```
