my_array=("value 1" "value 2" "value 3" "value 4")

echo ${my_array[1]}

echo ${my_array[-1]}

echo ${my_array[@]}

echo ${#my_array[@]}

#!/bin/bash

letters=( "A""B""C""D""E" ) 
echo ${letters[@]}

$ ABCDE

#!/bin/bash

letters=( "A""B""C""D""E" ) 
b=${letters:0:2}
echo "${b}"

$ AB

#!/bin/bash

letters=( "A""B""C""D""E" ) 
b=${letters::5}
echo "${b}"

$ ABCDE

#!/bin/bash

letters=( "A""B""C""D""E" ) 
b=${letters:3}
echo "${b}"

$ DE
