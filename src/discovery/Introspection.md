## Service introspection
Once you have discovered the Base URL to the UMP Service, you can proceed to load the Introspection Document. This is a JSON document that describes the running service, providing enough information for any UMP client to correctly connect and interact with it.

This document will always be located at */.well-known/ump-configuration* underneath the Base URL. Remember that the Base URL might include a path component underneath the domain name, and this is included in the path to the Introspection Document. So, from the example above, the Introspection Document is located at *https://ump.example.org/ump/.well-known/ump-configuration*.

```HTTP
GET /ump/.well-known/ump-configuration HTTP/1.1
Host: ump.example.org
Accept: application/json
```

This will return a JSON document that is described by the Introspection JSON Schema, and which fully documents what the service is and how to interact with it. This should be the minimal amount of information needed for a UMP Client to correctly access the game.
[include](introspection.json)
