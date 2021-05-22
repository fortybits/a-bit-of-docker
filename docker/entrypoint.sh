JAVA_OPTS=""

# Memory settings
JAVA_OPTS="$JAVA_OPTS -Xms2g -Xmx2g"

# GC settings
JAVA_OPTS="$JAVA_OPTS -XX:+UseG1GC"

# GC logging
JAVA_OPTS="$JAVA_OPTS \
			-XX:+PrintCommandLineFlags -XX:+PrintGCDetails \
			-Xlog:gc:${LOG_DIR}/gc.log \
			-Xlog:age*=debug
			-Xlog:gc*=debug -Xlog:gc+heap=trace \
			-Xlog:safepoint"

# JMX Options
JAVA_OPTS="$JAVA_OPTS \
			-Dcom.sun.management.jmxremote \
			-Dcom.sun.management.jmxremote.port=${JMX_PORT} \
			-Dcom.sun.management.jmxremote.authenticate=false \
			-Dcom.sun.management.jmxremote.ssl=false \
			-Dcom.sun.management.jmxremote.local.only=false"

# additional config file location
JAVA_OPTS="$JAVA_OPTS \
      -Duser.timezone=\Asia/Kolkata\ \
      -Djava.awt.headless=true \
      -Dfile.encoding=UTF-8 \
      -Djava.net.preferIPv4Stack=true"

java $JAVA_OPTS -jar ${APP_NAME}.jar
