---
description: Environmental Variables for Tomcat Startup
---

# setenv.sh

**Certificate CRL Options**  
[**https://community.microfocus.com/t5/Identity-Manager-User/Unable-to-log-onto-UserApp-after-updating-to-4-7-2/m-p/2334057**](https://community.microfocus.com/t5/Identity-Manager-User/Unable-to-log-onto-UserApp-after-updating-to-4-7-2/m-p/2334057)  
****`-Dcom.sun.jndi.ldap.object.disableEndpointIdentification=true  
-Dcom.sun.security.enableCRLDP=true`

**Troubleshoot Workflows - IDM 4.8**  
`-Dcom.microfocus.workflow.logging.level=INFO  
-XX:+UseG1GC -XX:-UseGCOverheadLimit  
-Dcom.netiq.idm.osp.logging.level=ALL`

**Increased Java heap memory and idm.jks replacement for cacerts in JRE - When removed, cacerts needs to have trusted applications' public certificates imported**`JAVA_OPTS=" -Xms2048m -Xmx2048m -XX:MaxPermSize=256m -Djavax.net.ssl.trustStore=$CATALINA_BASE/conf/idm.jks -server  "`

**Configure the below JVM property in "tomcat/bin/setenv.sh" file to avoid metaspace OutOfMemory issue because of jersey framework classloader leak problem under heavy load:**   
[https://docs.oracle.com/cd/E40972\_01/doc.70/e40973/cnf\_jvmgc.htm\#autoId2](https://docs.oracle.com/cd/E40972_01/doc.70/e40973/cnf_jvmgc.htm#autoId2)  
**** `JAVA_OPTS="-Dcom.sun.xml.bind.v2.bytecode.ClassTailor.noOptimize=true"`  
  
**Tuning Garbage Collection with Oracle JDK**  
When using Oracle's JDK, the goal in tuning garbage collection performance is to reduce the time required to perform a full garbage collection cycle. You should not attempt to tune the JVM to minimize the frequency of full garbage collections, because this generally results in an eventual forced garbage collection cycle that may take up to several full seconds to complete.

The simplest and most reliable way to achieve short garbage collection times over the lifetime of a production server is to use a fixed heap size with the collector and the parallel young generation collector, restricting the new generation size to at most one third of the overall heap.

Oracle recommends using the Garbage-First \(G1\) garbage collector. See "Getting Started with the G1 Garbage Collector" for more information on using the Garbage-First collector.

**The following example JVM settings are recommended for most production engine tier servers:**`-server -Xms24G -Xmx24G -XX:PermSize=512m -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:ParallelGCThreads=20 -XX:ConcGCThreads=5 -XX:InitiatingHeapOccupancyPercent=70`

**For production replica servers, use the example settings:**`-server -Xms4G -Xmx4G -XX:PermSize=512m -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:ParallelGCThreads=20 -XX:ConcGCThreads=5 -XX:InitiatingHeapOccupancyPercent=70`

**For standalone installations, use the example settings:**`-server -Xms32G -Xmx32G -XX:PermSize=512m -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:ParallelGCThreads=20 -XX:ConcGCThreads=5 -XX:InitiatingHeapOccupancyPercent=70`

**The above options have the following effect:**  
`-Xms`, `-Xmx`: Places boundaries on the heap size to increase the predictability of garbage collection. The heap size is limited in replica servers so that even Full GCs do not trigger SIP retransmissions. `-Xms` sets the starting size to prevent pauses caused by heap expansion.

`-XX:+UseG1GC`: Use the Garbage First \(G1\) Collector.

`-XX:MaxGCPauseMillis`: Sets a target for the maximum GC pause time. This is a soft goal, and the JVM will make its best effort to achieve it.

`-XX:ParallelGCThreads`: Sets the number of threads used during parallel phases of the garbage collectors. The default value varies with the platform on which the JVM is running.

`-XX:ConcGCThreads`: Number of threads concurrent garbage collectors will use. The default value varies with the platform on which the JVM is running.

`-XX:InitiatingHeapOccupancyPercent`: Percentage of the \(entire\) heap occupancy to start a concurrent GC cycle. GCs that trigger a concurrent GC cycle based on the occupancy of the entire heap and not just one of the generations, including G1, use this option. A value of 0 denotes 'do constant GC cycles'. The default value is 45.





\*\*\*\*

\*\*\*\*

\*\*\*\*



  


