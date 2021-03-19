---
description: Quick notes for IDApps
---

# Identity Applications

\*\*\*\*

**Configupdate in console mode \(and steps to select Auto option\)**:   
`1) ./configupdate.sh -use_console=false  
2) Select 'SSO Clients'  
3) Show Advanced Options  
4) Select RBPM section  
5) Select Auto for 'Select RBPM to eDirectory SAML configuration' option - This option will recreate the TrustedRoot certificate and other SAML objects in eDirectory, as well as update SAML Assertion login method object's attribute values with the new TrustedRoot certificate DN`

**Manually installing SAML method in eDirectory**  
`nmasinst -addmethod admin.sa.system EDAVIS6_TREE /mnt/idm482/IDVault/nmas/NmasMethods/Novell/SAML/config.txt -h 151.155.222.150:636 -W`

