
    #!/bin/bash

echo "Starting SQLMap..." sqlmap -u "http://target.com/vulnerable.php?id=1" --dbs --batch