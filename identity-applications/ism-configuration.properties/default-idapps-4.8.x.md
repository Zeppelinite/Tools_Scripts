# Default IDApps 4.8.x

```text
com.netiq.idm.osp.ldap.admin-pwd._attr_obscurity = ENCRYPT
com.netiq.idm.osp.ldap.use-ssl = true
com.netiq.idm.osp.ldap.host = 151.155.222.150
com.netiq.idm.osp.ldap.port = 636
com.netiq.idm.osp.as.users-container-dn = o=data
com.netiq.idm.osp.as.admins-container-dn = o=data
com.netiq.idm.osp.oauth-key-alias = osp
com.netiq.idm.osp.oauth-key.pwd._attr_obscurity = ENCRYPT
com.netiq.idm.osp.oauth-key.pwd = qd4wn9Bu8U8/LxglhBt/gA==:Zpnm01ix/d5vhgP7UbVxuA==:SiHIcy7MEUlss4fTwnKNuQ==
com.netiq.idm.osp.oauth.accessTokenTTL = 2000
com.netiq.idm.osp.oauth.refreshTokenTTL = 2592000
com.netiq.idm.osp.sessionTTL = 2700
com.netiq.idm.osp.auth.pwd.expire.show = true
com.netiq.idm.osp.auth.pwd.expire.url =
com.netiq.idm.osp.ssl-keystore.file = /opt/netiq/idm/apps/tomcat/conf/tomcat.ks
com.netiq.idm.osp.ssl-keystore.pwd._attr_obscurity = ENCRYPT
com.netiq.idm.osp.ssl-keystore.pwd = VZ9Tn9I8qffCTYXQgrZPYQ==:IGTiLp4ltSb0YtIVcKovgQ==:OZW38/Tny/KfQljOo09l5w==
com.netiq.idm.osp.oauth-keystore.file = /opt/netiq/idm/apps/osp/osp.jks
com.netiq.idm.osp.oauth-keystore.pwd._attr_obscurity = ENCRYPT
com.netiq.idm.osp.oauth-keystore.pwd = 3k7PlfOFLWX+dAvnNXpSYQ==:dXE+JUWf2CgOW+oUUNSJMA==:bF8QLsFuJWs1o/2ybUPjeg==
com.netiq.idm.osp.naaf.admin-name = LOCAL\\\\admin
com.netiq.sspr.clientID = sspr
com.netiq.sspr.clientPass._attr_obscurity = ENCRYPT
com.netiq.sspr.clientPass = jT7FOoN1RQT6XXFZk0to2w==:L5yC1XiRCjKg/Q16Hdf8/Q==:2wSYWlwGWGkNmjKlTU9fAw==
com.netiq.sspr.redirect.url = https://edavis7.lab.novell.com:8543/sspr/public/oauth
com.netiq.ism.audit.cef.enabled = false
com.netiq.ism.audit.cef.host = 2
com.netiq.ism.audit.cef.port = 6514
com.netiq.ism.audit.cef.protocol = tcp
com.netiq.idm.pwdmgt.provider = sspr
com.netiq.idmdash.clientID = idmdash
com.netiq.idmdash.clientPass._attr_obscurity = ENCRYPT
com.netiq.idmdash.clientPass = 3/ijYxrS8MqoMgoSgdgPSA==:JN/c7lFOfatJ040a26hZOA==:acHHx4Y5QyCCfS/fUT+x4g==
com.netiq.idmdash.redirect.url = https://edavis7.lab.novell.com:8543/idmdash/oauth.html
com.netiq.idmadmin.clientID = idmadmin
com.netiq.idmadmin.clientPass._attr_obscurity = ENCRYPT
com.netiq.idmadmin.clientPass = qhzKcCdmQpuav5oVpudULg==:1BcPmjl1sJMMbXIzrE2bsg==:XAyN+u9RS/B7NBi14eN+WQ==
com.netiq.idmadmin.redirect.url = https://edavis7.lab.novell.com:8543/idmadmin/oauth.html
com.netiq.rbpm.clientID = rbpm
com.netiq.rbpm.clientPass._attr_obscurity = ENCRYPT
com.netiq.rbpm.clientPass = ZOj+qps9ooIM+tYAI/gbkA==:JBX5MuhrQ4L+Cfy5/SxK+g==:qK8hweVvaNwaOwC8cX/5uQ==
com.netiq.rbpm.landing.url = /idmdash/#/landing
com.netiq.rbpm.redirect.url = https://edavis7.lab.novell.com:8543/IDMProv/oauth
com.netiq.idmadmin.landing.url = /idmdash/#/landing
com.netiq.idm.osp.login.sign-in-help-url = https://edavis7.lab.novell.com:8543/sspr/public
DirectoryService/realms/jndi/params/PROVISION_ROOT = cn=User Application Driver,cn=driverset1,o=system
com.netiq.idm.osp.oauth-truststore.file = /opt/netiq/idm/apps/tomcat/conf/idm.jks
com.netiq.idm.osp.oauth-truststore.pwd._attr_obscurity = ENCRYPT
com.netiq.idm.osp.oauth-truststore.pwd = L7G2TIGw0/NFPvsEla7i+g==:BpzRK8HH+rnyg8rPdC976w==:Xl+QuOIwVQP37S/2zJcJtw==
com.netiq.idm.ua.ldap.keystore-pwd._attr_obscurity = ENCRYPT
com.netiq.idm.osp.as.scope = subtree
com.netiq.idm.osp.as.naming-attr = cn
com.netiq.idm.osp.oauth-keystore.type = PKCS12
com.netiq.idm.osp.oauth.access-token-format.format = jwt
com.netiq.idm.osp.oauth.attr.roles.maxValues = 1
com.microfocus.workflow.clientID = workflow
com.microfocus.workflow.clientPass._attr_obscurity = ENCRYPT
com.microfocus.workflow.clientPass = 4iEedx7rpBlHV0ZP+ZbQhA==:NbHjyXMAO6nwDMQBH/iW+Q==:Rnx/wn306HD/cGYtw/1nGw==
com.microfocus.workflow.landing.url = workflow
com.microfocus.workflow.redirect.url = workflow
com.microfocus.workflow.response-types = client_credentials
com.netiq.idm.forms.url.host = https://edavis7.lab.novell.com:8600
com.netiq.idm.forms.url.context = forms
com.netiq.forms.clientID = forms
com.netiq.forms.redirect.url = https://edavis7.lab.novell.com:8600/forms/oauth.html
com.netiq.forms.clientPass._attr_obscurity = ENCRYPT
com.netiq.forms.clientPass = YQiVq9WlKD2HTwejNZpohA==:cI6nbJ8+/FWM6cVvk1NTJg==:BGQ4cBPEi4Ny9TV/JWtHCg==
com.netiq.forms.response-types = code,token
com.novell.idm.masterkey = MA4ECL6657vlPiSSAgIH0A==:6Ib+6gPYN7a76/MjU8AuZzrI12XNXfZe
com.novell.idm.rpt.core.smtp.pass._attr_obscurity = ENCRYPT
com.novell.afw.portal.aggregation.max_request_timeout = 20000
com.novell.afw.portal.aggregation.default_request_timeout = 15000
com.novell.afw.portal.aggregation.cacheexp_global_for_anon = 60
com.novell.afw.portal.aggregation.redirect_after_request = true
com.novell.afw.portal.aggregation.render_synch_in_main_thread = true
com.novell.afw.character_encoding = UTF-8
com.novell.ldap.timeout = 600000
com.sssw.fw.mimetype.xls = application/x-msexcel
com.sssw.fw.mimetype.etx = image/tiff
com.sssw.fw.mimetype.props = text/plain
com.sssw.fw.mimetype.txt = text/plain
com.sssw.fw.mimetype.text = text/plain
com.sssw.fw.mimetype.properties = text/plain
com.sssw.fw.mimetype.css = text/css
com.sssw.fw.mimetype.bmp = image/bmp
com.sssw.fw.mimetype.java = text/plain
com.sssw.fw.mimetype.mpg = video/mpeg
com.sssw.fw.mimetype.tif = image/tiff
com.sssw.fw.mimetype.mov = video/quicktime
com.sssw.fw.mimetype.pub = application/vnd.ms-publisher
com.sssw.fw.mimetype.wav = audio/wav
com.sssw.fw.mimetype.mp3 = audio/x-mpeg-3
com.sssw.fw.mimetype.xsl = application/xslt+xml
com.sssw.fw.mimetype.htm = text/html
com.sssw.fw.mimetype.mpeg = video/mpeg
com.sssw.fw.mimetype.tiff = image/tiff
com.sssw.fw.mimetype.sxw = application/vnd.sun.xml.writer
com.sssw.fw.mimetype.sxm = application/vnd.sun.xml.math
com.sssw.fw.mimetype.sxi = application/vnd.sun.xml.impress
com.sssw.fw.mimetype.sxg = application/vnd.sun.xml.writer.global
com.sssw.fw.mimetype.sxd = application/vnd.sun.xml.draw
com.sssw.fw.mimetype.sxc = application/vnd.sun.xml.calc
com.sssw.fw.mimetype.ps = postscript
com.sssw.fw.mimetype.swf = application/x-shockwave-flash
com.sssw.fw.mimetype.ppt = application/mspowerpoint
com.sssw.fw.mimetype.html = text/html
com.sssw.fw.mimetype.pdf = application/pdf
com.sssw.fw.mimetype.pcl = application/x-pcl
com.sssw.fw.mimetype.jpg = image/jpeg
com.sssw.fw.mimetype.jpeg = image/jpeg
com.sssw.fw.mimetype.stw = application/vnd.sun.xml.writer.template
com.sssw.fw.mimetype.sti = application/vnd.sun.xml.impress.template
com.sssw.fw.mimetype.avi = video/avi
com.sssw.fw.mimetype.gif = image/gif
com.sssw.fw.mimetype.std = application/vnd.sun.xml.draw.template
com.sssw.fw.mimetype.xml = text/xml
com.sssw.fw.mimetype.dot = application/msword
com.sssw.fw.mimetype.stc = application/vnd.sun.xml.calc.template
com.sssw.fw.mimetype.doc = application/msword
com.sssw.fw.extension.video.avi = .avi
com.sssw.fw.extension.video.mpeg = .mpg
com.sssw.fw.extension.video.quicktime = .mov
com.sssw.fw.extension.application.vnd.sun.xml.writer.template = .stw
com.sssw.fw.extension.application.vnd.sun.xml.draw = .sxd
com.sssw.fw.extension.application.vnd.sun.xml.draw.template = .std
com.sssw.fw.extension.application.vnd.sun.xml.math = .sxm
com.sssw.fw.extension.application.vnd.sun.xml.impress.template = .sti
com.sssw.fw.extension.application.vnd.sun.xml.impress = .sxi
com.sssw.fw.extension.application.vnd.sun.xml.writer = .sxw
com.sssw.fw.extension.application.vnd.sun.xml.writer.global = .sxg
com.sssw.fw.extension.application.vnd.sun.xml.calc = .sxc
com.sssw.fw.extension.application.vnd.sun.xml.calc.template = .stc
com.sssw.fw.extension.application.x-pcl = .pcl
com.sssw.fw.extension.application.msword = .doc
com.sssw.fw.extension.application.xslt+xml = .xsl
com.sssw.fw.extension.application.x-shockwave-flash = .swf
com.sssw.fw.extension.application.pdf = .pdf
com.sssw.fw.extension.application.x-msexcel = .xls
com.sssw.fw.extension.application.mspowerpoint = .ppt
com.sssw.fw.extension.audio.wav = .wav
com.sssw.fw.extension.audio.x-mpeg-3 = .mp3
com.sssw.fw.extension.image.jpeg = .jpg
com.sssw.fw.extension.image.gif = .gif
com.sssw.fw.extension.image.bmp = .bmp
com.sssw.fw.extension.image.tiff = .tiff
com.sssw.fw.extension.text.plain = .txt
com.sssw.fw.extension.text.xml = .xml
com.sssw.fw.extension.text.html = .html
com.sssw.fw.extension.text.css = .css
com.sssw.fw.extension.postscript = .ps
com.sssw.fw.api.threadpool.minthreads = 4
com.sssw.fw.api.threadpool.buffersize = 10
com.sssw.fw.api.threadpool.keepalifetime = 300000
com.sssw.fw.api.threadpool.initialthreads = 10
com.sssw.fw.api.threadpool.maxthreads = 100
com.sssw.fw.api.threadpool.enabled_at_startup = true
com.sssw.fw.persist.jdbc.TruncateASAjConnectTimestamp = true
com.sssw.fw.task.events.enable = true
com.sssw.fw.filesystem.directory = /tmp
com.sssw.fw.userTransaction.enable = true
com.netiq.rbpmrest.clientID = rbpmrest
com.netiq.idm.create-db-on-startup = true
RoleService/AppRoleManager/role/secOfficer = cn=secOfficer,%nrf-system-role-root%,%nrf-role-root%
RoleService/nrf.browseroles.filter = false
RoleService/nrf.browseroles.columns = name,level,cats
RoleService/nrf.nrfRequests.columns = source,requester,target,status,requestdate,reason,request
RoleService/nrf.nrfRequests.filter = false
RoleService/nrf.roleassignment.filter = false
RoleService/nrf.roleassignment.columns = assignment,source,effectivedate,expirationdate,status
ContentCache.enable = false
RoleService/AppRoleManager/role/roleAdmin = cn=roleAdmin,%nrf-system-role-root%,%nrf-role-root%
ResourceService/Resource/soap/requestResourceRevoke = false
RoleService/AppRoleManager/role/roleAuditor = cn=roleAuditor,%nrf-system-role-root%,%nrf-role-root%
java.protocol.handler.pkgs = \|com.sssw.fw.resource.net\\\\|java.protocol.handler.pkgs = \|com.sssw.fw.resource.net\\\\|java.protocol.handler.pkgs = \|com.sssw.fw.resource.net\\\\|java.protocol.handler.pkgs = \|com.sssw.fw.resource.net\\\\|java.protocol.handler.pkgs = \|com.sssw.fw.resource.net\\\\|java.protocol.handler.pkgs = \|com.sssw.fw.resource.net\\\\|java.protocol.handler.pkgs = \|com.sssw.fw.resource.net\\\\|java.protocol.handler.pkgs = \|com.sssw.fw.resource.net
java.naming.factory.initial = com.sssw.rt.jndi.AgInitCtxFactory
java.naming.provider.url = sssw://localhost
RoleService/Role/SOAP-End-Points-Authorization-Security-Enabled = true
DirectoryService/realms/jndi/params/UUID_AUX_CLASS = srvprvEntityAux
AttestationService/attestation.report.minpool = 10
AttestationService/attestation.report.initpool = 5
AttestationService/attestation.report.maxpool = 20
AttestationService/attestation.report.keepalive = 30000000
AttestationService/attestation.requestdetails.filter = false
AttestationService/attestation.requestdetails.columns = attester,completeddate,status,result
AttestationService/attestation.requests.columns = name,requester,type,status,requestdate,deadline
AttestationService/attestation.requests.filter = false
ResourceService/Resource/soap/requestResourceGrant = false
MaxInClauseItems = 999
license.string = D1F4FF21FD3FDEES5U56E
license.version = 500
RoleService/Role/soap = true
RoleService/popin.role.filters = Name,Description
RoleService/popin.role.columns = Name,Description
RoleService/popin.sod.filters = Name,Description
RoleService/popin.sod.columns = Name,Description
RoleService/AppRoleManager/role/attestationManager = cn=attestationManager,%nrf-system-role-root%,%nrf-role-root%
RoleService/Resource/SOAP-End-Points-Authorization-Security-Enabled = true
RbpmAuthService/rbpm-auth-mgr-factory = com.novell.idm.security.authorization.service.AuthorizationManagerFactory
DirectoryService/realms/jndi/params/UUID_ATTRIB = srvprvUUID
ResourceService/Resource/soap/getAssignmentsForResource = true
RoleService/AppRoleManager/role/complianceAdmin = cn=complianceAdmin,%nrf-system-role-root%,%nrf-role-root%
ResourceService/Resource/maxInactiveIntervalTime = 60
ResourceService/Resource/soap/getResourceRequestStatusByCorrelationId = false
ResourceService/Resource/soap/getResourceAssignmentsForCurrentUser = false
RoleService/AppRoleManager/role/roleManager = cn=roleManager,%nrf-system-role-root%,%nrf-role-root%
ResourceService/Resource/soap/getResourceRequestStatusByIdentity = true
ResourceService/Resource/soap = true
RoleService/nrf-system-roles-rdn = cn=System,cn=Level20
RoleService/uiconfig-navitems-rdn = cn=NavItems,cn=UIConfig,cn=AppConfig
DirectoryService/realms/jndi/params/OBJECT_ATTRIB = objectClass
ResourceService/Resource/soap/getResourceAssignmentsForUser = true
ResourceService/Resource/soap/getResourceRequestStatusForCurrentUser = false
RoleService/nrf-configuration-rdn = cn=configuration,cn=RoleConfig,cn=AppConfig
RoleService/Role/maxInactiveIntervalTime = 60
WorkflowService/SOAP-End-Points-Authorization-Security-Enabled = true
WorkflowService/SOAP-End-Points-Resource-Beta-Enabled = false
WorkflowService/SOAP-End-Points-Accessible-By-ProvisioningAdminOnly = true
WorkflowService/soap/getProcessesById = true
WorkflowService/soap/getProcessesByCreationTime = true
WorkflowService/soap/getProcessesByCreationInterval = true
WorkflowService/soap/getProcessesByInitiator = true
WorkflowService/soap/getProcessesByRecipient = true
WorkflowService/soap/getProcessesByStatus = true
WorkflowService/soap/getProcessesByApprovalStatus = true
WorkflowService/soap/getProcesses = true
WorkflowService/soap/getCommentsByActivity = true
WorkflowService/soap/getCommentsByUser = true
WorkflowService/soap/getCommentsByCreationTime = true
WorkflowService/soap/getComments = true
WorkflowService/soap/addComment = true
WorkflowService/soap/reassignWorkTask = true
WorkflowService/soap/setWorkTaskPriority = true
WorkflowService/soap/unclaim = true
WorkflowService/soap/setUserActivityTimeout = true
WorkflowService/soap/getUserActivityTimeout = true
WorkflowService/soap/setWebServiceActivityTimeout = true
WorkflowService/soap/getWebServiceActivityTimeout = true
WorkflowService/soap/setCompletedProcessTimeout = true
WorkflowService/soap/getCompletedProcessTimeout = true
WorkflowService/soap/setEmailNotifications = true
WorkflowService/soap/getEmailNotifications = true
WorkflowService/soap/getEngineConfiguration = true
WorkflowService/soap/setEngineConfiguration = true
WorkflowService/soap/getClusterState = true
WorkflowService/soap/removeEngine = true
WorkflowService/soap/getEngineState = true
WorkflowService/soap/reassignProcesses = true
WorkflowService/soap/reassignAllProcesses = true
WorkflowService/soap/reassignPercentageProcesses = true
WorkflowService/soap/getProvisioningStatuses = true
WorkflowService/soap/resetPriorityForWorkTask = true
WorkflowService/soap/getQuorumForWorkTask = true
WorkflowService/soap/getGraph = true
WorkflowService/soap/getFlowDefinition = true
WorkflowService/soap/getFormDefinition = true
WorkflowService/soap/multiStart = true
WorkflowService/soap/setResult = true
WorkflowService/soap/setRoleRequestStatus = true
WorkflowService/soap/getAllProvisioningRequests = false
WorkflowService/soap/getDefinitionByID = false
WorkflowService/soap/getProvisioningRequests = false
WorkflowService/soap/getProvisioningCategories = false
WorkflowService/soap/startWithCorrelationId = false
WorkflowService/soap/terminate = false
WorkflowService/soap/getProcess = false
WorkflowService/soap/getProcessesArray = false
WorkflowService/soap/getCommentsByType = false
WorkflowService/soap/getWorkEntries = false
WorkflowService/soap/getDataItems = false
WorkflowService/soap/getWork = false
WorkflowService/soap/forwardAsProxyWithDigitalSignature = false
WorkflowService/SOAP-End-Points-MaxInactiveIntervalTime = 60
WorkflowService/AFWORKTASK-Table-Case-Insensitive-Search = true
WorkflowService/AFPROCESS-Table-Case-Insensitive-Search = true
WorkflowService/SOAP-End-Points-Process-Query-MaxRows = 1000
WorkflowService/engine-id = engine-id
WorkflowService/default-engine-name = DefaultEngine
WorkflowService/ProvisioningImplName = com.novell.soa.af.impl.core.ProvisioningImpl
WorkflowService/IDXUtilImplName = com.novell.soa.af.impl.core.VDXUtil
WorkflowService/NotificationUtilImplName = com.novell.soa.af.impl.core.NotificationUtil
WorkflowService/AuthorizationFactoryImplName = com.novell.soa.af.service.security.auth.RbpmAuthorizationManagerFactory
WorkflowService/ProvisionActivityName = com.novell.soa.af.impl.activity.ProvisionActivity
WorkflowService/RoleBindingActivityName = com.novell.soa.af.impl.activity.RoleBindingActivity
WorkflowService/ResourceStatusBindingActivityName = com.novell.soa.af.impl.activity.ResourceStatusBindingActivity
WorkflowService/RoleRequestActivityName = com.novell.soa.af.impl.activity.RoleRequestActivity
Metrics/NumberOfInventoryIntervals = 3
Metrics/MaxTeamMembers = 20
Metrics/MaxClients = 10
Metrics/TimeRequiredBetweenClientRequests = 250
Metrics/MaxRows = 50
Metrics/SecondsToAnythingDivider = 3600d
NotificationService/EnableJMSPersistence = true
NotificationService/EmailConnectionTimeout = 60000
NotificationService/MessagesPerConnection = 20
NotificationService/Subscribers = email
NotificationService/JMSReconnectInterval = 2000
NotificationService/JMSReconnectCount = 3
NotificationService/MessageSelector = subscribers like '%email%'
NotificationService/Topic/JNDI = topic/IDMNotificationDurableTopic
NotificationService/TopicConnectionUsername/Subscriber = p_user
NotificationService/TopicConnectionPassword/Subscriber = changeit
NotificationService/TopicConnectionUsername/Publisher = p_user
NotificationService/TopicConnectionPassword/Publisher = changeit
NotificationService/TopicConnectionSubscriptionName = _emailSender0
NotificationService/MessageLife = 36000000
NotificationService/soap = false
PortalService/MaxPortletTimeout = 60000
VirtualDataService/definition/mapfile-location = com/novell/srvprv/impl/vdata/castor/mapping/
VirtualDataService/definition/relative-container/config-def = cn=DirectoryModel,cn=AppConfig
VirtualDataService/definition/relative-container/entity-def = cn=EntityDefs,cn=DirectoryModel,cn=AppConfig
VirtualDataService/definition/relative-container/choice-def = cn=ChoiceDefs,cn=DirectoryModel,cn=AppConfig
VirtualDataService/definition/relative-container/relationship-def = cn=RelationshipDefs,cn=DirectoryModel,cn=AppConfig
VirtualDataService/definition/relative-container/team-def = cn=TeamDefs,cn=AppConfig
VirtualDataService/definition/relative-container/query-def = cn=QueryDefs,cn=DirectoryModel,cn=AppConfig
VirtualDataService/definition/cache-on = true
VirtualDataService/model/team/user-entitydef = user
VirtualDataService/secret-store/charsetName = UTF-8
VirtualDataService/ldap/attribute/user-certificate = userCertificate
VirtualDataService/ldap/attribute/idm-associations = DirXML-Associations
VirtualDataService/soap = true
VirtualDataService/soap/query = false
VirtualDataService/soap/getAttribute = false
VirtualDataService/soap/setAttribute = false
VirtualDataService/soap/getAttributes = false
VirtualDataService/soap/globalQuery = false
VirtualDataService/soap/maxInactiveIntervalTime = 60
VirtualDataService/class/macro-extender = com.novell.idm.nrf.util.ProcessContainerMacros
customtheme.candidates.limitbyname = false
customtheme.ignorelist = ;IDMPwdMgt.war;IDMPwdMgtTheme.war;
otb.default.theme = BlueGloss
automatic.custom.theme = false
cache.external = true
ThemebrandServlet.getLastModified.enabled = true
persistence.enabled = true
com.sssw.fw.security.sigcert.naudit.cert = -----BEGIN CERTIFICATE-----\nMIIC8DCCAdigAwIBAgICEAEwDQYJKoZIhvcNAQELBQAwKjELMAkGA1UEBhMCVVMx\nGzAZBgNVBAMMEk5vdmVsbCBOU3VyZSBBdWRpdDAeFw0xNzAxMDkyMjM0MDFaFw0z\nNzAxMDkyMjM0MDFaMB4xCzAJBgNVBAYTAlVTMQ8wDQYDVQQDDAZEaXJYTUwwggEi\nMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC85GutIOZBHNU5xU6mVozzBQe7\nBGvWwaTgCuV3potntSZePt/oGhcSzoJm5jgm2/LOBNUJ96JNuCvlvqKx9pGpF0pF\nk+sY31ZJPUPm1sBnABMGH2uOht/KxfcxzvFny/kh8Irvm8X+ndTxGEeLrkQCv+Wg\n7h4Z5rFTHQ+6hMX6F855ag5Ika0SdSaLP+4AJj9W+n9nMyKXeAjjOOLn4GAwzA1q\nECeE14bzmIc+J2YuNrmWSZvW8nMDJTdiI9KInIetHtFQ8ykFjAhJ0XzsZXYF87hU\n2Cumw3yxsJEyyuYyXVt1Q48db26tnyCo7dbo/YRt6OI/yEipKXhxO2hhD5V9AgMB\nAAGjLDAqMA4GA1UdDwEB/wQEAwIFoDAYBgxghkgBhvg3AYJbCgEECBYGRGlyWE1M\nMA0GCSqGSIb3DQEBCwUAA4IBAQBakrJQZDX8xg4fkbqx+0bw6LbsgaoWa86T0xRK\nWEJ2kFtyFJ1OHte+yR9ATz28xYlKJQvB4DIwsV3EnvGLgsBNd+x/u10MU6qjro2Q\nFX2yd0RrpBEZVMhJPwvtGVpO1UZP7Dile0pRAbKkOFMgHjXe2wQi6L8YPHmEswS5\nH7zUD8aDeywRDnz20r1utxYEX7lCy/f58qegPRB5WM0wwFvZO5C+LjtP3pnUXHyZ\ndCk1pMQgg40oGSm67C3rTT8u4ovs5Ce2Tm3dw9bBfR5nIeFdKj38478BPEZvZq5U\ncfpdoXToC/bED0Ohgyr7eEeqkDipCKyxDuVBoiHitUp6tHK+\n-----END CERTIFICATE-----
com.sssw.fw.security.sigcert.naudit.key._attr_obscurity = ENCRYPT
com.sssw.fw.security.sigcert.naudit.key = gaa2jB2MjghLZN9Qvf7dxg==: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:zcyePQ0nYMIPeoU+UsrneQ==
portal.context = IDMProv
com.netiq.idm.osp.oauth.dn = name
DirectoryService/realms/jndi/params/USER_ROOT_CONTAINER = o=data
com.netiq.idm.osp.token.max.cache.size = 16000
DirectoryService/realms/jndi/params/MANDATORY_SECURE_USER_CONNECTION = true
DirectoryService/realms/jndi/params/GROUP_OBJECT = groupOfNames
NotificationService/IncomingMail/MessageLife = 36000000
com.microfocus.idm.enable.vlv.count = true
com.netiq.idm.osp.oauth.cacheable = cacheable
DirectoryService/realms/jndi/params/USE_PUB_ANON = true
com.netiq.idm.osp.oauth.language = language
DirectoryService/realms/jndi/params/PLAIN_PORT = 389
com.netiq.idm.as.restrict-to-contexts = false
NotificationService/IncomingMail/TopicConnectionUsername/Subscriber = p_user
DirectoryService/realms/jndi/params/GROUP_SEARCH_SCOPE = subtree
NotificationService/IncomingMail/TopicConnectionSubscriptionName = _incomingMailSubscriber0
com.netiq.idm.osp.oauth.email = email
DirectoryService/realms/jndi/params/GROUP_USER_MEMBER_ATTRIB = member
NotificationService/IncomingMail/Topic/JNDI = topic/EmailBasedApprovalTopic
NotificationService/IncomingMail/TopicConnectionPassword/Subscriber = changeit
com.netiq.idmengine.clientID = idmengine
DirectoryService/realms/jndi/params/ROOT_NAME = o=data
com.novell.srvprv.spi.email.notify.SECURE_PORT = 8543
NotificationService/IncomingMail/EmailConnectionTimeout = 60000
com.netiq.edir.ncp-port = 524
DirectoryService/realms/jndi/params/USE_DYNAMIC_GROUPS = true
NotificationService/IncomingMail/TopicConnectionUsername/Publisher = p_user
NotificationService/IncomingMail/MessagesPerConnection = 20
RbpmAuthService/rbpm-resources-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
NotificationService/IncomingMail/Subscribers = incomingMail
com.netiq.rbpmrest.response-types = password
NotificationService/IncomingMail/EnableJMSPersistence = true
com.netiq.idmdash.landing.url = /idmdash/#/landing
com.sssw.fw.security.Locksmith = cn=uaadmin,ou=sa,o=data
RbpmAuthService/rbpm-compliance-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
com.sssw.fw.security.srvprv.Locksmith = cn=uaadmin,ou=sa,o=data
RbpmAuthService/rbpm-prd-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
com.sssw.fw.directory.ICSLogoutEnabled = false
DirectoryService/realms/jndi/params/USER_OBJECT = inetOrgPerson
com.netiq.idm.ua.ldap.keystore-pwd = 5tmTLxmFfGNu861ac5zQoQ==:e0ok3SwkNYke60V7dYFCNw==:0kc7nDsyJhsUcQnkmqYORg==
com.netiq.idm.osp.oauth.expiration = expiration
DirectoryService/realms/jndi/params/SECURE_PORT = 636
DirectoryService/realms/jndi/params/KEYSTORE_PATH = /opt/netiq/idm/apps/tomcat/conf/idm.jks
com.netiq.idm.osp.oauth.txn = txn
NotificationService/IncomingMail/TopicConnectionPassword/Publisher = changeit
DirectoryService/realms/jndi/params/NAMING_ATTRIBUTE = cn
RbpmAuthService/rbpm-sec-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
com.netiq.idm.osp.oauth.first.name = first_name
DirectoryService/realms/jndi/params/LOGIN_ATTRIBUTE = cn
RoleService/nrf-compliance-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
NotificationService/TopicConnectionFactory/JNDI = jms/ConnectionFactory
NotificationService/IncomingMail/JMSReconnectCount = 3
com.microfocus.idm.max.users.count.limit = 1000
NotificationService/IncomingMail/TopicConnectionFactory/JNDI = jms/ConnectionFactory
com.sssw.fw.directory.ICSLogoutPage = https://yourAccessGataewayServer/AGLogout
com.netiq.idm.osp.oauth.last.name = last_name
com.netiq.idm.osp.oauth.client = client
RoleService/nrf-role-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
com.netiq.idm.session-timeout = 1200
RbpmAuthService/rbpm-rbpm-cfg-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
eDir.compound.index.set = true
DirectoryService/realms/jndi/params/GROUP_ROOT_CONTAINER = ou=groups,o=data
RbpmAuthService/rbpm-roles-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
DirectoryService/realms/jndi/params/CONTAINER_OBJECT = c=countryou=organizationalUnito=organizationdc=domaint=treeRoot
DirectoryService/realms/jndi/params/AUTHORITY = 151.155.222.150
com.netiq.idmadmin.response-types = code
RbpmAuthService/report-admin-assigned-identity-dn = cn=uaadmin,ou=sa,o=data
DirectoryService/realms/jndi/params/USER_SEARCH_SCOPE = subtree
DirectoryService/realms/jndi/params/DYNAMIC_GROUP_OBJECT = dynamicGroup
com.novell.srvprv.spi.email.notify.PORT = 8080
com.netiq.wf.engine.url = https://edavis7.lab.novell.com:8543/workflow
NotificationService/IncomingMail/MessageSelector = subscribers like '%incomingMail%'
com.netiq.idmengine.response-types = password
com.netiq.idm.osp.oauth.initials = initials
NotificationService/IncomingMail/JMSReconnectInterval = 2000
com.netiq.idm.osp.token.init.cache.size = 1000
com.netiq.idm.osp.oauth.auth.src.id = auth_src_id
DirectoryService/realms/jndi/params/USER_GROUP_MEMBER_ATTRIB = groupMembership
DirectoryService/realms/jndi/params/MANDATORY_SECURE_ADMIN_CONNECTION = true
com.netiq.sspr.response-types = code,token
com.netiq.idm.osp.as.duplicate-resolution-naming-attr = mail
DirectoryService/realms/jndi/params/DRIVER_SET_ROOT = cn=driverset1,o=system
com.novell.xss.blacklist.detailportlet = \",<
com.novell.xss.blacklist.workflow = <
com.novell.idm.ldap.admin.user = cn=admin,ou=sa,o=system
com.novell.idm.ldap.admin.pass._attr_obscurity = ENCRYPT
com.novell.idm.ldap.admin.pass = rF+O78oh/ExCC6t7eMg92A==:tTSCXIHwqdhIDHXHg1+9kg==:KR1ldl0NICm+3wM/rvUEaQ==
com.netiq.client.authserver.url.revoke = https://edavis7.lab.novell.com:8543/osp/a/idm/auth/oauth2/revoke
com.microfocus.idm.application.url = https://edavis7.lab.novell.com:8543/IDMProv
com.microfocus.idm.enable.vlv = true
com.microfocus.idm.max.users.limit = 1000
com.microfocus.idm.min.search.characters = 3
com.netiq.rbpm.pwd-expiry.sspr.redirect.enable=false
com.netiq.rbpmrest.clientPass._attr_obscurity = ENCRYPT
com.netiq.rbpmrest.clientPass = Bw6ns989vLQytX9OWfKe3g==:jgWixAU/IDfoqH60OwR/YQ==:92HjgvgdLQF3jypuyNPC0A==
com.netiq.idmengine.clientPass._attr_obscurity = ENCRYPT
com.netiq.idmengine.clientPass = Z+DvBWY+WeW46NZVL0tjqA==:NHZey4J8yyvpvmcqRqJU6w==:th+xsFFXnyNVvcDqr/kFiA==
com.netiq.ism.audit.cef.cache-file-dir = /opt/netiq/idm/apps/tomcat/cache
com.netiq.idm.rbpm.updateConfig-On-StartUp = false
com.microfocus.workflow.updateConfig-On-StartUp = false
com.netiq.rpt.rpt-web.redirect.url = http://localhost:8180/IDMRPT/oauth.html
com.netiq.rpt.rpt-web.response-types = code
com.netiq.rpt.clientID = rpt
com.netiq.rpt.clientPass._attr_obscurity = ENCRYPT
com.netiq.rpt.clientPass = hWbbQwLL2ZIPIWaMQEDl+A==:GeYFCgKAGR82G9wMCcnGzg==:AiqvWParAzCxRTH/Gfzk0Q==
com.netiq.idmdcs.clientID = idmdcs
com.netiq.idmdcs.clientPass._attr_obscurity = ENCRYPT
com.netiq.idmdcs.clientPass = fJYkoPIWAGHnNokzgO2QBw==:55eRWwvDGI8/nL+VHXNPsw==:RZvhilVTL8lBA5s8N3K/Ng==
com.netiq.idmdcs.redirect.url = http://localhost:8180/idmdcs/oauth.html
com.netiq.dcsdrv.clientPass._attr_obscurity = ENCRYPT
com.netiq.dcsdrv.clientPass = XA74ndqcNHjNeB/1HQvBhQ==:WX0efisAznXJGaHWVCvVZg==:+UIOUNeSZr+7p+tl9LD9iw==
com.netiq.dcsdrv.response-types = password
com.netiq.dcsdrv.clientID = dcsdrv
com.netiq.client.authserver.url.extend.session = ${com.netiq.idm.osp.url.host}/osp/a/idm/auth/app/activity
com.netiq.rpt.rpt-web.clientID = rptw
com.netiq.idm.osp.oauth.public.refreshTokenTTL = 2700
com.netiq.oauth.autologout.timeout = 60
com.netiq.rpt.landing.url = ${com.netiq.idm.osp.url.host}/idmdash/#/landing
com.netiq.rbpm.smtp.tls = false
com.netiq.idm.osp.oauth.sessionTokenRevocationTTL = 172800
com.netiq.idm.osp.login.method = np
com.netiq.idm.osp.naaf.enabled = false
com.netiq.idmdcs.landing.url = /idmdash/#/landing
com.netiq.idm.osp.naaf.ignore-cert-subject = false
com.netiq.idm.osp.localhost-auto-add = true
com.netiq.rbpm.response-types = code,client_credentials
com.netiq.idmdash.response-types = code,token
com.netiq.rpt.response-types = password
com.netiq.idmdcs.response-types = code,token
com.sssw.fw.security.sigcert.truststore.type = JKS
com.netiq.idm.osp.url.host = https://edavis7.lab.novell.com:8543
com.netiq.idm.osp.oauth.issuer = ${com.netiq.idm.osp.url.host}/osp/a/idm/auth/oauth2
com.netiq.client.authserver.url.logout = ${com.netiq.idm.osp.url.host}/osp/a/idm/auth/app/logout
com.netiq.idm.osp.login.captcha.type = none
com.netiq.idm.osp.ssl-keystore.type = PKCS12
com.netiq.idm.ua.ldap.keystore-type = PKCS12
com.netiq.ism.bug-workaround = FIXIT

```

