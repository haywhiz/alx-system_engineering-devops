0x10. HTTPS SSL
Description
What you should learn from this project:

What is HTTPS SSL 2 main roles
What is the purpose encrypting traffic
What SSL termination means
0. World wide web
Configure your domain zone so that the subdomain www points to your load-balancer IP (lb-01). Let’s also add other subdomains to make our life easier, and write a Bash script that will display information about subdomains.
1. HAproxy SSL termination
“Terminating SSL on HAproxy” means that HAproxy is configured to handle encrypted traffic, unencrypt it and pass it on to the next hope.
2. A good habit is to enforce HTTPS traffic so that no unencrypted traffic is possible. Configure HAproxy to automatically redirect HTTP traffic to HTTPS.

Requirements:

This should be transparent to the user
HAproxy should return a 301
HAproxy should redirect HTTP traffic to HTTPS
Share your HAproxy config as an answer file (/etc/haproxy/haproxy.cfg)
