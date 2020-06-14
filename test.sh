. $VENV/bin/activate
make SIM=icarus
FAILURE_CASES=$(grep "failure" results.xml)
if [ ! -z "$FAILURE_CASES" ]
then
    echo "Failed!\n$FAILURE_CASES"
    exit 1
else
    echo "Tests has ran successfully!"
    exit 0
fi
