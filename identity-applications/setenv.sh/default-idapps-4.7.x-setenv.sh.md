---
description: Baseline setenv.sh for Identity Apps 4.7
---

# Default IDApps 4.7.x setenv.sh

```text
#!/bin/sh

TOMCAT_PARENT_DIR=/opt/netiq/idm/apps

CATALINA_BASE=${TOMCAT_PARENT_DIR}/tomcat
export CATALINA_BASE

CATALINA_PID="${CATALINA_BASE}/tomcat.pid"
export CATALINA_PID

export JAVA_HOME=/opt/netiq/common/jre

export JRE_HOME=/opt/netiq/common/jre

export PATH=/opt/netiq/common/jre/bin:${PATH}


JAVA_OPTS="  -Djavax.net.ssl.trustStore=$CATALINA_BASE/conf/idm.jks  "

export JAVA_OPTS
export CATALINA_OPTS="-Dcom.netiq.ism.config=/opt/netiq/idm/apps/tomcat/conf/ism-configuration.properties -Dcom.netiq.osp.ext-context-file=/opt/netiq/idm/apps/osp/lib/osp-conf-edir.jar -Dcom.netiq.idm.osp.logging.level=ALL -Dcom.netiq.idm.osp.client.host=edavis2.lab.novell.com -Dcom.netiq.idm.osp.audit.enabled=false -Dcom.netiq.idm.osp.logging.file.dir=${CATALINA_BASE}/logs -Djava.awt.headless=true -Dsspr.applicationPath=/opt/netiq/idm/apps/sspr/sspr_data -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Didmuserapp.logging.config.dir=/opt/netiq/idm/apps/tomcat/conf/ -Dextend.local.config.dir=/opt/netiq/idm/apps/tomcat/conf/ -Dlog4j.configuration=file:///opt/netiq/idm/apps/tomcat/conf/userapp-log4j.xml -Dlogging.configuration=file:///opt/netiq/idm/apps/tomcat/conf/logging.properties -Dcom.netiq.rpt.config.file=/opt/netiq/idm/apps/tomcat/conf/ism-configuration.properties -Dcom.novell.afw.wf.engine-id=EDAVIS2_ENG -Djdk.tls.rejectClientInitiatedRenegotiation=true -Djava.net.preferIPv4Stack=true"
```

