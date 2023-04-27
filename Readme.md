# PingScanner

This is a bash script that performs a network scan using ping and ARP protocols to discover active hosts on a local network.

## Usage

Before running the program, make sure that the script file scan.sh has executable permissions. To do this run the following command:
```bash
chmod +x pingscan.sh
```
And run this to use the program : 

```bash
./scan.sh [ip address]
```
Where [ip address] is the IP address of the network to be scanned.

The script will send ICMP ping requests to all IP addresses in the network, and record the addresses of hosts that respond to the pings in a hidden file named `.HostAlive.txt`

After a waiting period of 30 seconds, the script will then use the ARP protocol to identify the hosts that responded to the pings, and display their MAC addresses.

Finally, the hidden file .HostAlive.txt is deleted.


## Example

Here is an example usage of the script:

```
./scan.sh 192.168.0.1
```
## Notes

- This script requires root privileges to run, as it uses the `ping` and `arp` commands that require superuser permissions.
- The script may take several minutes to complete, depending on the size of the network being scanned and the responsiveness of the hosts.
- The script uses a hidden file `.HostAlive.txt` to store the results of the ping scan. This file is automatically deleted after use.
- If you encounter any issues or have suggestions for improvements, please open an issue on GitHub.
