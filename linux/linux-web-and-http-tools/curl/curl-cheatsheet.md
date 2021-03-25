# cURL Cheatsheet

#### 1.1 CURL GET/HEAD <a id="org61aae8d"></a>

| Name | Command |
| :--- | :--- |
| Curl head request | `curl -I https://www.google.com` |
| Curl head request with verbose | `curl -v -I https://www.google.com` |
| Curl with explicit http method | `curl -X GET https://www.google.com` |
| Curl without http proxy | `curl --noproxy 127.0.0.1 http://www.stackoverflow.com` |
| Curl has no timeout by default | `curl --connect-timeout 10 -I -k https://www.google.com` |
| [Curl get with extra headers](https://stackoverflow.com/questions/356705/how-to-send-a-header-using-a-http-request-through-a-curl-call) | `curl --verbose --header "Host: www.mytest.com:8182" www.google.com` |
| Curl get response with headers | `curl -k -v https://www.google.com` |

#### 1.2 CURL POST <a id="org65ffe71"></a>

| Name | Command |
| :--- | :--- |
| Curl post request | `curl -d "name=username&password=123456" <URL>` |
| Curl post send json | `curl <URL> -H "content-type: application/json" -d "{ \"woof\": \"bark\"}"` |

#### 1.3 CURL ADVANCED <a id="org6efffcb"></a>

| Name | Command |
| :--- | :--- |
| Get my public ip | `curl -L -s http://ipecho.net/plain`, `curl -L -s http://whatismijnip.nl` |
| Curl with credential | `curl -u $username:$password http://repo.dennyzhang.com/README.txt` |
| Curl upload | `curl -v -F key1=value1 -F upload=@localfilename <URL>` |
| Install curl in alpine linux | `apk add --update curl` |
| Curl with http2 | `curl -k -v --http2 https://www.google.com/` |
| Curl ftp upload | `curl -T cryptopp552.zip -u test:test ftp://10.32.99.187/` |
| Curl ftp download | `curl -u test:test ftp://10.32.99.187/cryptopp552.zip -o cryptopp552.zip` |
| Curl upload with credential | `curl -v -u admin:admin123 --upload-file package1.zip http://mysever:8081/dir/package1.zip` |

#### 1.4 CURL SCRIPT <a id="orga97ccda"></a>

| Name | Command |
| :--- | :--- |
| Install packages with curl | [curl-install-package.sh](https://github.com/dennyzhang/cheatsheet.dennyzhang.com/blob/master/cheatsheet-curl-A4/curl-install-package.sh) |
| Check a website response time | [curl-url-time.sh](https://github.com/dennyzhang/cheatsheet.dennyzhang.com/blob/master/cheatsheet-curl-A4/curl-url-time.sh) |
| Beautify json output for curl response | [curl-format-json.sh](https://github.com/dennyzhang/cheatsheet.dennyzhang.com/blob/master/cheatsheet-curl-A4/curl-format-json.sh) |
| Curl run remote scripts | [curl-remote-scripts.sh](https://github.com/dennyzhang/cheatsheet.dennyzhang.com/blob/master/cheatsheet-curl-A4/curl-remote-scripts.sh) |

#### 1.5 WGET <a id="org728e3a4"></a>

| Name | Command |
| :--- | :--- |
| Download one url | `wget -O /tmp/google.html https://google.com` |
| Download mutiple urls | `wget https://google.com https://bing.com` |
| Download a list of urls | `wget -i url-list.txt`, [url-list.txt](https://github.com/dennyzhang/cheatsheet.dennyzhang.com/blob/master/cheatsheet-networking-A4/url-list.txt) |

#### 1.6 MORE RESOURCES <a id="org5c61db2"></a>

License: Code is licencurl under [MIT License](https://www.dennyzhang.com/wp-content/mit_license.txt).

[http://curl.haxx.se](http://curl.haxx.se/)

