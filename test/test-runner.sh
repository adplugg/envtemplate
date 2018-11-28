#!/bin/sh
#
# Script for testing the envtemplate script.
#
# Reads in the environment variables in test.env and then renders the
# template.txt to output.txt. Then compares the output to the expected output.
#
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color.

# Set up the variables.
export VAR_1=val1
export VAR_2=val2
export VAR_3=val3

# Call the script.
../envtemplate render --in template.txt --out output.txt

# Confirm that the output is as expected.
diff expected-output.txt output.txt
error=$?
if [ $error -eq 2 ]; then
    printf "${RED}[ERROR]\n${NC}"
elif [ $error -eq 1 ]; then
    printf "${RED}[TEST FAILED]\n${NC}"
else
    printf "${GREEN}[PASSED]\n${NC}"
fi

exit $error
