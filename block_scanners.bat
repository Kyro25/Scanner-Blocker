@echo off

rem Block Censys IP subnets
netsh advfirewall firewall add rule name="Block Censys 162.142.125.0/24" dir=in action=block remoteip=162.142.125.0/24
netsh advfirewall firewall add rule name="Block Censys 167.94.138.0/24" dir=in action=block remoteip=167.94.138.0/24
netsh advfirewall firewall add rule name="Block Censys 167.94.145.0/24" dir=in action=block remoteip=167.94.145.0/24
netsh advfirewall firewall add rule name="Block Censys 167.94.146.0/24" dir=in action=block remoteip=167.94.146.0/24
netsh advfirewall firewall add rule name="Block Censys 167.248.133.0/24" dir=in action=block remoteip=167.248.133.0/24
netsh advfirewall firewall add rule name="Block Censys 199.45.154.0/24" dir=in action=block remoteip=199.45.154.0/24
netsh advfirewall firewall add rule name="Block Censys 199.45.155.0/24" dir=in action=block remoteip=199.45.155.0/24
netsh advfirewall firewall add rule name="Block Censys 206.168.34.0/24" dir=in action=block remoteip=206.168.34.0/24
netsh advfirewall firewall add rule name="Block Censys 2602:80d:1000:b0cc:e::/80" dir=in action=block remoteip=2602:80d:1000:b0cc:e::/80
netsh advfirewall firewall add rule name="Block Censys 2620:96:e000:b0cc:e::/80" dir=in action=block remoteip=2620:96:e000:b0cc:e::/80
netsh advfirewall firewall add rule name="Block Censys 2602:80d:1003::/112" dir=in action=block remoteip=2602:80d:1003::/112
netsh advfirewall firewall add rule name="Block Censys 2602:80d:1004::/112" dir=in action=block remoteip=2602:80d:1004::/112

rem Block Shodan IP addresses
netsh advfirewall firewall add rule name="Block Shodan 208.180.20.97" dir=in action=block remoteip=208.180.20.97
netsh advfirewall firewall add rule name="Block Shodan 198.20.69.74" dir=in action=block remoteip=198.20.69.74
netsh advfirewall firewall add rule name="Block Shodan 198.20.69.98" dir=in action=block remoteip=198.20.69.98
netsh advfirewall firewall add rule name="Block Shodan 198.20.70.114" dir=in action=block remoteip=198.20.70.114
netsh advfirewall firewall add rule name="Block Shodan 198.20.99.130" dir=in action=block remoteip=198.20.99.130
netsh advfirewall firewall add rule name="Block Shodan 93.120.27.62" dir=in action=block remoteip=93.120.27.62
netsh advfirewall firewall add rule name="Block Shodan 66.240.236.119" dir=in action=block remoteip=66.240.236.119
netsh advfirewall firewall add rule name="Block Shodan 71.6.135.131" dir=in action=block remoteip=71.6.135.131
netsh advfirewall firewall add rule name="Block Shodan 66.240.192.138" dir=in action=block remoteip=66.240.192.138
netsh advfirewall firewall add rule name="Block Shodan 71.6.167.142" dir=in action=block remoteip=71.6.167.142
netsh advfirewall firewall add rule name="Block Shodan 82.221.105.6" dir=in action=block remoteip=82.221.105.6
netsh advfirewall firewall add rule name="Block Shodan 82.221.105.7" dir=in action=block remoteip=82.221.105.7
netsh advfirewall firewall add rule name="Block Shodan 71.6.165.200" dir=in action=block remoteip=71.6.165.200
netsh advfirewall firewall add rule name="Block Shodan 188.138.9.50" dir=in action=block remoteip=188.138.9.50
netsh advfirewall firewall add rule name="Block Shodan 85.25.103.50" dir=in action=block remoteip=85.25.103.50
netsh advfirewall firewall add rule name="Block Shodan 85.25.43.94" dir=in action=block remoteip=85.25.43.94
netsh advfirewall firewall add rule name="Block Shodan 71.6.146.185" dir=in action=block remoteip=71.6.146.185
netsh advfirewall firewall add rule name="Block Shodan 71.6.158.166" dir=in action=block remoteip=71.6.158.166
netsh advfirewall firewall add rule name="Block Shodan 198.20.87.98" dir=in action=block remoteip=198.20.87.98
netsh advfirewall firewall add rule name="Block Shodan 66.240.219.146" dir=in action=block remoteip=66.240.219.146
netsh advfirewall firewall add rule name="Block Shodan 209.126.110.38" dir=in action=block remoteip=209.126.110.38
netsh advfirewall firewall add rule name="Block Shodan 104.236.198.48" dir=in action=block remoteip=104.236.198.48
netsh advfirewall firewall add rule name="Block Shodan 104.131.0.69" dir=in action=block remoteip=104.131.0.69
netsh advfirewall firewall add rule name="Block Shodan 162.159.244.38" dir=in action=block remoteip=162.159.244.38

rem Block Shadowserver IP subnets
netsh advfirewall firewall add rule name="Block Shadowserver 216.218.206.0/24" dir=in action=block remoteip=216.218.206.0/24
netsh advfirewall firewall add rule name="Block Shadowserver 74.82.47.0/24" dir=in action=block remoteip=74.82.47.0/24

rem Block PAN Expanse IP subnets
netsh advfirewall firewall add rule name="Block PAN Expanse 144.86.0.0/15" dir=in action=block remoteip=144.86.0.0/15
netsh advfirewall firewall add rule name="Block PAN Expanse 44.192.0.0/10" dir=in action=block remoteip=44.192.0.0/10

rem Block other popular scanner IP subnets (DigitalOcean)
netsh advfirewall firewall add rule name="Block DigitalOcean 142.93.0.0/16" dir=in action=block remoteip=142.93.0.0/16
netsh advfirewall firewall add rule name="Block DigitalOcean 104.248.0.0/16" dir=in action=block remoteip=104.248.0.0/16
netsh advfirewall firewall add rule name="Block DigitalOcean 167.99.0.0/16" dir=in action=block remoteip=167.99.0.0/16
netsh advfirewall firewall add rule name="Block DigitalOcean 128.199.0.0/16" dir=in action=block remoteip=128.199.0.0/16
netsh advfirewall firewall add rule name="Block DigitalOcean 178.128.0.0/16" dir=in action=block remoteip=178.128.0.0/16

echo All specified scanner IPs/subnets are now blocked.
pause
