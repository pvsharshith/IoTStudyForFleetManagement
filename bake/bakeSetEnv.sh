#!/bin/bash 
#### 
# Environment setting script. Automatically generated by Bake
####

if [ "${BASH_SOURCE:-}" == "${0}" ]; then 
    echo "> Call with . bakeSetEnv.sh or source bakeSetEnv.sh" 
    exit 1 
fi 

 export LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+${LD_LIBRARY_PATH}:}/home/harshith/ns-allinone-3.30.1/bake/build/lib"
 export PATH="${PATH:+${PATH}:}/home/harshith/ns-allinone-3.30.1/bake/build/bin"
 export PYTHONPATH="${PYTHONPATH:+${PYTHONPATH}:}/home/harshith/ns-allinone-3.30.1/bake:/home/harshith/ns-allinone-3.30.1/bake/build/lib:/home/harshith/ns-allinone-3.30.1/bake/build/lib/python3.7/site-packages"