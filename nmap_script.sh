
3. **nmap_script.sh**
```bash
#!/bin/bash

echo "Starting Nmap..."
nmap -sV -p 80,443,3389 192.168.1.100