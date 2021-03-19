---
description: Common Reference
---

# Links & Utilities

**Gather LDAP Traces**   
[https://www.novell.com/support/kb/doc.php?id=7007106](https://www.novell.com/support/kb/doc.php?id=7007106) 

**Gather NMAS Traces**   
[https://www.novell.com/support/kb/doc.php?id=7009602](https://www.novell.com/support/kb/doc.php?id=7009602)

**Gather Fiddler / Wireshark Traces**  
[https://confluence.atlassian.com/kb/how-to-capture-http-traffic-using-wireshark-or-fiddler-779164332.html](https://confluence.atlassian.com/kb/how-to-capture-http-traffic-using-wireshark-or-fiddler-779164332.html)

**Gather SSPR Logs & Traces**  
[https://support.microfocus.com/kb/doc.php?id=7014795](https://support.microfocus.com/kb/doc.php?id=7014795)

**Running gather.sh Extract and run from anywhere on the server**:   
`unzip gather-*.sh   
chmod +x gather.sh   
./gather.sh`

**Configupdate in console mode \(and steps to select Auto option\)**:   
`1) ./configupdate.sh -use_console=false  
2) Select 'SSO Clients'  
3) Show Advanced Options  
4) Select RBPM section  
5) Select Auto for 'Select RBPM to eDirectory SAML configuration' option - This option will recreate the TrustedRoot certificate and other SAML objects in eDirectory, as well as update SAML Assertion login method object's attribute values with the new TrustedRoot certificate DN`

**Manually installing SAML method in eDirectory**  
`nmasinst -addmethod admin.sa.system EDAVIS6_TREE /mnt/idm482/IDVault/nmas/NmasMethods/Novell/SAML/config.txt -h 151.155.222.150:636 -W`

\*\*\*\*



