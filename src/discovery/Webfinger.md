## WebFinger
Initial discovery is handled by making a [WebFinger](https://webfinger.net/) request to the domain hosting the game. This is done by making a simple HTTP request to */.well-known/webfinger* on the Domain hosting the game. The WebFinger specification requires that the *resource* parameter is provided, but his has no benefit to UMP and so can be set to any valid string.

For example:
```HTTP
GET /.well-known/webfinger?resource=graham%40grahamcox.co.uk HTTP/1.1
Host: ump.example.org
Accept: application/jrd+json
```

This will then return a WebFinger JRD that describes the services available on this domain. In this list of services, the UMP Service is described by a *rel* of *http://github.com/mudcoders/ump*, and contains the Base URL of the UMP Server.
[include](webfinger.json)
