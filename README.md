MongooseIM (previously esl-ejabberd) is Erlang Solutions' robust and efficient XMPP
server aimed at large installations. Specifically designed for enterprise purposes,
it is fault-tolerant, can utilize resources of multiple clustered machines
and easily scale in need of more capacity (by just adding a box/VM).
It provides support for WebSockets and reimplemented BOSH.

Its home at GitHub is http://github.com/esl/MongooseIM.

Medigram XMPP
-------------

This branch has been slightly modified to work with Medigram's XMPP server. See the [Readme](https://github.com/bdionne/ejabberd) for details on building and running.

In addition to some code changes, we've added the ability to configure the make process, so that the the ejabberd.cfg file can be customized for the machine being installed on. A typical scenario might be:

```
./configure -p /opt/mg_xmpp -ejc /etc/medigram-staging.com.pem
```

```
make rel
```



```
make install
```
