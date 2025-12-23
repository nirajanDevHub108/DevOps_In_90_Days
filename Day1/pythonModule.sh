#!/opt/homebrew/bin/bash

moduleName=boto3
python3 -c "import ${moduleName}" 1>/dev/null 2>/dev/null
if [[ $? -eq 0 ]]; then
    echo " The ${moduleName} module is installed"
else
    echo "The ${moduleName} module is not installed"
fi