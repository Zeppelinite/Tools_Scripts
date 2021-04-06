---
description: Quick notes for IDGov
---

# Identity Governance

**IG Review definition troubleshooting A csv export of the following tables from igops**:  
`select * from perf_log order by id`  
`select * from perf_event_log order by id`  
`select * from review_item_action order by id`

**Configutil.sh**

```text
cd /opt/netiq/idm/apps/idgov
./bin/configutil.sh -password db_password -console
es
```

