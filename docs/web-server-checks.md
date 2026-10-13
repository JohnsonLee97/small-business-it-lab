# Web Server Checks

## HTTP response

Command: curl -I http://localhost
Result: HTTP/1.1 200 OK
Server: nginx/1.28.3 (Ubuntu)

## Listening port

Command: sudo ss -ltnp 'sport = :80'
Result:
Nginx is listening on port 80 for both IPv4 and IPv6.
The output shows LISTEN and nginx.

## Access log

Command: sudo tail -n 10 /var/log/nginx/access.log
Result:
Nginx recorded homepage requests from the local browser.
The requests returned 304 Not Modified, allowing the browser
to reuse its cached page.
