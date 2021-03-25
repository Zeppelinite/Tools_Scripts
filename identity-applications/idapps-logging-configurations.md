---
description: Options for idmuserapp_logging.xml
---

# IDApps Logging Configurations



**CAPTURE UA LOGGING IN CATALINA.OUT**

Go into the /IDMProv/portal/cn/AdminContainerPage/LoggingMgmt \(IDMProv, Administration tab, Logging\) and enable the following log switched for TRACE:

**WORKFLOW SWITCHES**

```text
com.novell.soa.ws.impl
com.novell.soa.script
com.novell.soa.af.impl (should be already there in the big list)
com.novell.soa.af.impl.activity
com.novell.soa.af.impl.core
com.novell.soa.af.impl.link
com.novell.soa.af.impl.scripting
```

**ENTITLEMENT GRANTING / REVOKING \(not showing in UI\)**

```text
com.novell.idm.nrf
com.novell.idm.nrf.actions
com.novell.idm.nrf.forms
com.novell.idm.nrf.ajaxservice
com.novell.idm.nrf.ajaxservice.resources
com.novell.idm.nrf.api
com.novell.idm.nrf.beans
com.novell.idm.nrf.exception
com.novell.idm.nrf.report
com.novell.idm.nrf.resources
com.novell.idm.nrf.soap.ws
com.novell.idm.nrf.soap.ws.resource
com.novell.idm.nrf.soap.ws.resource.impl
com.novell.idm.nrf.soap.ws.role
com.novell.idm.nrf.soap.ws.role.impl
com.novell.idm.nrf.ui
com.novell.idm.nrf.ui.tag
com.novell.idm.nrf.util
```

**CODE MAP REFRESH SWITCHES**

```text
com.novell.idm.nrf.persist
com.novell.idm.nrf.exception
com.novell.srvprv.impl.vdata.model
```

**EMAIL SWITCHES**

```text
com.novell.soa.notification
com.novell.soa.notification.impl
com.novell.soa.notification.impl.jms
com.novell.soa.notification.impl.vdx
com.novell.soa.notification.mailbox
com.novell.soa.notification.mailbox.impl
com.novell.soa.notification.soap
com.novell.soa.notification.soap.ws
```

