# WAP Gateway on Kubernetes

WAP (Wireless application protocol) 1.0 is a rare version of WAP which was only used for several years and didn't have quite the popularity WAP 2.0 had (yet compared to the post iPhone area not a big success either).
WAP 1.0 was quite a special protocol, it didn't use HTTP like WAP 2.0, instead it used WSP (Wireless Session Protocol).
This protocol was meant as a proxy server to compress HTTP responses, for example it used bitmaps to set common HTTP headers and it even compiled it's own dialect of JavaScript. This allowed the mobile clients to use slow connections like 9600 baud modems or later GPRS. 

Since this protocol was only briefly used in the early 2000s it quickly vanished from carrier's infrastructure, often together with WAP dial up modem numbers which were used (some of them are still active but disconnected, ping me if you want to go digital urban exploring).

[Kannel](https://kannel.org/) is the only open source implementation of this proxy service (which I could find). I used to run my private proxy for a while on a dedicated instance but this became quite expensive, this is why I containerised it and made a Kubernetes deployment.

## Use at own risk
Kannel is quite old software and is an interpreter, if security alerts don't start ringing now stop reading and go do something else.
Do not run this next to any trusted services, and only use this with strict firewall rules set. You're exposing a proxy service after all. 

## Deployment
This repo comes with a Helm chart and a Dockerfile. The chart will set up the proxy server as a NodePort service, you might need to put the correct forwards in place as the WSP port is hardcoded in all WAP phones to UDP 9200.

**If these words mean nothing to you this repo is not for you.*