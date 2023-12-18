./devdojo.com your_argument

#!/bin/bash

echo "Argument one is $1"
echo "Argument two is $2"
echo "Argument three is $3"

chmod +x arguments.sh

./arguments.sh dog cat bird

Argument one is dog
Argument two is cat
Argument three is bird

#!/bin/bash

echo "All arguments: $@"

./arguments.sh dog cat bird

All arguments: dog cat bird

#!/bin/bash

echo "The name of the file is: $0 and it is going to be self-deleted."

rm -f $0
