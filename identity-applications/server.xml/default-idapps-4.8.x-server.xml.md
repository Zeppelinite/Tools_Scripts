---
description: Baseline server.xml for IDApps 4.8
---

# Default IDApps 4.8.x server.xml

_**To enable Tomcat clustering, remove lines 92 & 94 from config**_

```
<?xml version="1.0" encoding="UTF-8"?>
<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<!-- Note:  A "Server" is not itself a "Container", so you may not
     define subcomponents such as "Valves" at this level.
     Documentation at /docs/config/server.html
 -->
<Server port="8005" shutdown="SHUTDOWN">
  <Listener className="org.apache.catalina.startup.VersionLoggerListener" />
  <!-- Security listener. Documentation at /docs/config/listeners.html
  <Listener className="org.apache.catalina.security.SecurityListener" />
  -->
  <!--APR library loader. Documentation at /docs/apr.html -->
  <Listener className="org.apache.catalina.core.AprLifecycleListener" SSLEngine="on" />
  <!-- Prevent memory leaks due to use of particular java/javax APIs-->
  <Listener className="org.apache.catalina.core.JreMemoryLeakPreventionListener" />
  <Listener className="org.apache.catalina.mbeans.GlobalResourcesLifecycleListener" />
  <Listener className="org.apache.catalina.core.ThreadLocalLeakPreventionListener" />
  <!-- Global JNDI resources
       Documentation at /docs/jndi-resources-howto.html
  -->
  <GlobalNamingResources>
    <!-- Editable user database that can also be used by
         UserDatabaseRealm to authenticate users
    -->
    <Resource name="UserDatabase" auth="Container" type="org.apache.catalina.UserDatabase" description="User database that can be updated and saved" factory="org.apache.catalina.users.MemoryUserDatabaseFactory" pathname="conf/tomcat-users.xml" />
    <Resource auth="Container" description="User database that can be updated and saved" factory="org.apache.catalina.users.MemoryUserDatabaseFactory" name="UserDatabase" pathname="conf/tomcat-users.xml" type="org.apache.catalina.UserDatabase" />
    <Resource auth="Container" driverClassName="org.postgresql.Driver" factory="com.netiq.tomcat.jdbc.pool.CustomBasicDataSourceFactory" initialSize="10" maxTotal="100" maxActive="50" maxIdle="10" maxWait="30000" minIdle="10" name="shared/IDMUADataSource" password="KfVH0eKWmd5WXq7CIOnJLg==:jfpz012gvYacyiuzyEA7oQ==:++dKHJ8dwVIdY8GQ6cTr+A==" testOnBorrow="true" type="javax.sql.DataSource" url="jdbc:postgresql://edavis7.lab.novell.com:5432/idmuserappdb" username="idmadmin" validationInterval="120000" validationQuery="SELECT 1" />
    <Resource auth="Container" driverClassName="org.postgresql.Driver" factory="com.netiq.tomcat.jdbc.pool.CustomBasicDataSourceFactory" initialSize="10" maxTotal="100" maxActive="50" maxIdle="10" maxWait="30000" minIdle="10" name="shared/IGADataSource" password="KfVH0eKWmd5WXq7CIOnJLg==:jfpz012gvYacyiuzyEA7oQ==:++dKHJ8dwVIdY8GQ6cTr+A==" testOnBorrow="true" type="javax.sql.DataSource" url="jdbc:postgresql://edavis7.lab.novell.com:5432/igaworkflowdb" username="idmadmin" validationInterval="120000" validationQuery="SELECT 1" />
    <Resource auth="Container" brokerName="LocalActiveMQBroker" brokerURL="tcp://localhost:61716" description="JMS Connection Factory" factory="org.apache.activemq.jndi.JNDIReferenceFactory" name="jms/ConnectionFactory" type="org.apache.activemq.ActiveMQConnectionFactory" />
    <Resource auth="Container" description="Topic for IdmApps" factory="org.apache.activemq.jndi.JNDIReferenceFactory" name="topic/IDMNotificationDurableTopic" physicalName="IDMNotificationDurableTopic" type="org.apache.activemq.command.ActiveMQTopic" />
    <Resource auth="Container" description="Topic for IdmApps email based approval" factory="org.apache.activemq.jndi.JNDIReferenceFactory" name="topic/EmailBasedApprovalTopic" physicalName="EmailBasedApprovalTopic" type="org.apache.activemq.command.ActiveMQTopic" />
  </GlobalNamingResources>
  <!-- A "Service" is a collection of one or more "Connectors" that share
       a single "Container" Note:  A "Service" is not itself a "Container",
       so you may not define subcomponents such as "Valves" at this level.
       Documentation at /docs/config/service.html
   -->
  <Service name="Catalina">
    <!--The connectors can use a shared executor, you can define one or more named thread pools-->
    <!--
    <Executor name="tomcatThreadPool" namePrefix="catalina-exec-"
        maxThreads="150" minSpareThreads="4"/>
    -->
    <!-- A "Connector" represents an endpoint by which requests are received
         and responses are returned. Documentation at :
         Java HTTP Connector: /docs/config/http.html (blocking & non-blocking)
         Java AJP  Connector: /docs/config/ajp.html
         APR (HTTP/AJP) Connector: /docs/apr.html
         Define a non-SSL/TLS HTTP/1.1 Connector on port 8080
    -->
    <!-- A "Connector" using the shared thread pool-->
    <!--
    <Connector executor="tomcatThreadPool"
               port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />
    -->
    <!-- Define a SSL/TLS HTTP/1.1 Connector on port 8443
         This connector uses the NIO implementation that requires the JSSE
         style configuration. When using the APR/native implementation, the
         OpenSSL style configuration is required as described in the APR/native
         documentation -->
    <Connector port="8543" protocol="org.apache.coyote.http11.Http11NioProtocol" maxThreads="150" maxHttpHeaderSize="65536" SSLEnabled="true" scheme="https" secure="true" clientAuth="false" sslProtocol="TLSv1.2" keystoreFile="conf/tomcat.ks" keystorePass="novell" sslEnabledProtocols="TLSv1.2" />
    <!-- Define an AJP 1.3 Connector on port 8009 -->
    <!-- An Engine represents the entry point (within Catalina) that processes
         every request.  The Engine implementation for Tomcat stand alone
         analyzes the HTTP headers included with the request, and passes them
         on to the appropriate Host (virtual host).
         Documentation at /docs/config/engine.html -->
    <!-- You should set jvmRoute to support load-balancing via AJP ie :
    <Engine name="Catalina" defaultHost="localhost" jvmRoute="jvm1">
    -->
    <Engine name="Catalina" defaultHost="localhost">
      <!--For clustering, please take a look at documentation at:
          /docs/cluster-howto.html  (simple how to)
          /docs/config/cluster.html (reference documentation) -->
      <!--
      <Cluster className="org.apache.catalina.ha.tcp.SimpleTcpCluster"/>
      -->
      <!-- Use the LockOutRealm to prevent attempts to guess user passwords
           via a brute-force attack -->
      <Realm className="org.apache.catalina.realm.LockOutRealm">
        <!-- This Realm uses the UserDatabase configured in the global JNDI
             resources under the key "UserDatabase".  Any edits
             that are performed against this UserDatabase are immediately
             available for use by the Realm.  -->
        <Realm className="org.apache.catalina.realm.UserDatabaseRealm" resourceName="UserDatabase" />
      </Realm>
      <Host name="localhost" appBase="webapps" unpackWARs="true" autoDeploy="true">
        <!-- SingleSignOn valve, share authentication between web applications
             Documentation at: /docs/config/valve.html -->
        <!--
        <Valve className="org.apache.catalina.authenticator.SingleSignOn" />
        -->
        <!-- Access log processes all example.
             Documentation at: /docs/config/valve.html
             Note: The pattern used is equivalent to using pattern="common" -->
        <Valve className="org.apache.catalina.valves.AccessLogValve" directory="logs" prefix="localhost_access_log" suffix=".txt" pattern="%h %l %u %t &quot;%r&quot; %s %b" />
      </Host>
    </Engine>
  </Service>
</Server>


```
