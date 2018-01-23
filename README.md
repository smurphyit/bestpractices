# bestpractices

This test cookbook, will do such things as:

* bootstrapping chef to the node
* update /etc/bash.bashrc with some shopt changes and aliases
* setup tunables:  disable IPv6, block SYN attacks, etc...
* configure timedatectl for NTP synchronizations
* create additional account(s) and add the public ssh keys for said accounts
* install UFW, allowing ssh access by default

NOTE:
After updating the sysctl file, it needs to be refreshed.  Do this by forcing the command:
sudo sysctl -p

TO-DO:

* add rotating motd message
* install check_mk_agent (for resource monitoring / trending )
* configure /etc/resolv.conf (if required)
* configure sudo access
