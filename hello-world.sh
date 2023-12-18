name="DevDojo"
 echo $name
 #using brackets helps distinguish your code
 echo ${name}

 nano devdojo.sh

 #!/bin/bash

name="DevDojo"

echo "Hi there $name"

./devdojo.sh

Hi there DevDojo

#!/bin/bash

name="DevDojo"
greeting="Hello"

echo "$greeting $name"

./devdojo.sh

Hello DevDojo

./devdojo.sh Bobby buddy!

#!/bin/bash

echo "Hello there" $1

#!/bin/bash

echo "Hello there" $1

# $1 : first parameter

echo "Hello there" $2

# $2 : second parameter

echo "Hello there" $@

# $@ : all

./devdojo.sh Bobby buddy!
