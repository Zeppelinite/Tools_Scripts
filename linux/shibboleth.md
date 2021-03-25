---
description: Reference Notes and Docs for Lab Install of Shibboleth
---

# Shibboleth



### 1. Introduction

This guide describes the installation of a [Shibboleth Service Provider](https://www.shibboleth.net/products/service-provider/) \(SP\) 3.2 on the supported operating systems below.  
We did not test the SP on all OS versions, so [please report](mailto:aai@switch.ch?subject=SP%203.2%20Implementation%20Guide) any issue you encounter.

First select the operating system that is used on the host where the Shibboleth Service Provider is installed: **CentOS Linux 7.4.x** or newer  
 **CentOS Linux 8.x**  
 **Red Hat Enterprise Linux 7.4.x** or newer  
 **Red Hat Enterprise Linux 8.x**  
 **Debian 10.x \(buster\)** \(using [SWITCH Package Repository](https://pkg.switch.ch/switchaai/) unless official packages contain latest SP version\).  
 **Ubuntu 18.04 LTS \(bionic\)** \(using [SWITCH Package Repository](https://pkg.switch.ch/switchaai/)\).  
 **Ubuntu 20.04 LTS \(focal\)** \(using [SWITCH Package Repository](https://pkg.switch.ch/switchaai/)\).  
 [**SUSE Linux Enterprise Server 12SP5x \(The Shibboleth Consortium officially supports these distributions for a period of time in 2021\)**](https://www.switch.ch/aai/guides/sp/installation/?os=suse)  
 **macOS 10.12.x - 10.15.x** \(not macOS 11\)  
 **Windows Server 2008 and above with IIS**

This guide covers only installation but not the configuration of the Service Provider. The installation instructions are generic and not federation specific.  
If the Service Provider is already installed, please continue to the federation-specific [Configuration Guide](https://www.switch.ch/aai/guides/sp/installation/configuration.html?os=suse&hostname=yourhost.example.org).

### 2. Prerequisites

For the following steps it is assumed that the reader is sufficiently experienced to use the command line environment on the operating system of choice.

Please examine the list below and ensure that the system where the Service Provider is going to be installed meets the given requirements.

#### 2.1. Requirements

The following requirements must be met to install and operate the Shibboleth Service Provider. Apache WebserverBecause Shibboleth is mostly used for web authentication, a web server is needed. In this guide an Apache webserver is required for the Shibboleth Service Provider. It is also possible to use the Shibboleth SP with [Nginx](https://wiki.shibboleth.net/confluence/display/SP3/Nginx) but this is out of scope for this guide. Root accessFor the following steps it must be possible to execute commands as user with root privileges, e.g. as root user or with the recommended `sudo`. Ensure that you have root privileges on the system.

#### 2.2. Recommendations

The following software is optional but recommended to be installed for installation and operation of the Service Provider. SudoWe recommend installing `sudo` for commands that require root privileges.  
As root user `sudo` can be installed with:

```text
zypper install sudo
```

 SSL enabled for ApacheIt is strongly recommended to have the Apache SSL module enabled and configured to support `HTTPS`. By default the Shibboleth messages containing user attributes are encrypted. Therefore, they can also be sent via the insecure HTTP protocol. However, any session-based access to a web page via the insecure HTTP is prone to session hijacking attacks. This also includes the Shibboleth session. Relying on HTTPS mitigates this risk.

Before continuing to the next section, please ensure that the requirements above are met on the system where the Shibboleth Service Provider will be installed.

### 3. Shibboleth Repository

The Shibboleth project maintains its own repository that provides the official Shibboleth Service Provider binaries and its dependencies for RPM-based Linux distributions. This repository contains always up-to-date version of the Shibboleth Service Provider. Therefore, it is recommended to prefer this repository and its packages over packages that may be provided by the OS distribution. Download & install repository packageFor SUSE Linux 12SP5:

```text
sudo zypper ar -f https://download.opensuse.org/repositories/security:/shibboleth/SLE_12_SP5/security:shibboleth.repo
```

You will be asked to confirm the new repository. Refresh Repository

```text
sudo zypper ref -s
```

### 4. Installation

Install the Shibboleth Service Provider. Shibboleth Service Provider Installation

```text
sudo zypper install shibboleth
```

If asked to confirm whether you really want to install Shibboleth and all dependencies, answer with 'Y' for yes.

After installation of the package, you need to start the `shibd` daemon:

```text
sudo service shibd start
```

If there was an older version of a Service Provider already installed on the system, you might be asked whether to keep the existing configuration files or overwrite them with the package default files. The old configuration files should be kept. You can continue to use the old files in most cases. However, you should update them to get rid of deprecation warnings for legacy configuration elements. Generally, it is recommended to perform a clean configuration as is described in the configuration guide mentioned below. Optional proxy settingsShibboleth will automatically download metadata and CRL files. If your network policy does not allow outgoing connections on port 80 by default, then it is recommended to configure an HTTP proxy for outgoing connections.  
Add the following line in `/etc/sysconfig/shibd`

```text
export http_proxy=proxy.example.org:8080
```

#### 4.1. Result

The Service Provider should now be installed on the system. Of particular interests are the directories:`/etc/shibboleth`Configuration directory of Shibboleth. The main configuration file is `shibboleth2.xml`.`/var/log/shibboleth`Log directory where logs are written to. The most important log file is the `shibd.log` file that should be consulted in case of problems.`/run/shibboleth`Runtime directory where process ID and socket files are stored.`/var/cache/shibboleth`Cache directory where metadata backup and CRL files are stored.`/etc/init.d`Init script directory where the startup script for the `shibd` daemon is stored.

### 5. Quick Test

After the installation a quick test shows whether the Service Provider was installed properly. Shibboleth Configuration CheckIn the command line, execute the following command to see whether the Shibboleth Service Provider can load the default configuration:

```text
sudo shibd -t
```

Important is that the last line of the output is:

```text
overall configuration is loadable, check console for non-fatal problems
```

If there are any `ERROR` log entries, it is strongly recommended to have a look at the problem.  
Messages with log level `WARN` are generally not problematic but it is recommended to examine the causes of these warning messages. Apache Configuration CheckAlso test the Apache configuration with the command:

```text
sudo apachectl configtest
```

The output of this command should be:

```text
Syntax OK
```

 Shibboleth Quick Test\(Re-\) Start the web server and then access the URL: `https:///Shibboleth.sso/Session`.  
  
The web server \(or rather the Shibboleth daemon respectively\) should return a page that says:

```text
A valid session was not found.
```

This message shows that the Shibboleth module is loaded by the webserver and is communicating with the `shibd` process.

### 6. Service Provider Configuration

After the above tests were successful, continue to the Shibboleth configuration. Note that the **configuration and migration guides are only for SWITCHaai Participants who configure a Service Provider for the SWITCHaai Federation** \(or the AAI Test Federation\). In all other cases refer to the [configuration guides of the Shibboleth Consortium](https://wiki.shibboleth.net/confluence/display/SP3/Home).

* To create a new configuration, please continue with the [Configuration Guide for new installations](https://www.switch.ch/aai/guides/sp/installation/configuration.html?os=suse&hostname=yourhost.example.org). This is the recommended way.
* To update an existing Shibboleth Service Provider configuration, continue with the [Migration Guide for existing installations](https://www.switch.ch/aai/guides/sp/migration/#3). This option is only recommended if you are experienced with Shibboleth and if your existing configuration was customized to use advanced Shibboleth features

**Mistakes and Improvements?**If you found an error or a typo or if you have suggestions for improvements, please [let us know](mailto:aai@switch.ch?subject=SP%203.2%20Implementation%20Guide). Your contributions are appreciated very much and they will help your colleagues.

### 7. Additional Information

#### 7.1. References

* [Shibboleth Service Provider - Installation Instructions](https://wiki.shibboleth.net/confluence/display/SP3/Installation): Comprehenisve installation instructions for various operating systems
* [Shibboleth Service Provider - Configuration](https://wiki.shibboleth.net/confluence/display/SP3/SPConfig): Comprehensive reference documentation for shibboleth2.xml
* [Shibboleth Service Provider - Apache Configuration](https://wiki.shibboleth.net/confluence/display/SP3/Apache): Documentation for Apache directives provided by Shibboleth
* [Apache - General Documentation](https://httpd.apache.org/docs/2.4/): General Apache documentation

