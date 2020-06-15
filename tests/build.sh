SRC_PATH=$(pwd)
BIN_PATH="$SRC_PATH/bin"
VERILOG_FILES=$(find $SRC_PATH -name "*.v")

HAS_ERROR=0
for FILE in $VERILOG_FILES
do
  iverilog -t "null" -I $SRC_PATH -o $BIN_PATH/$FILE $FILE
  RESULT=$(echo $?)
  if [ $RESULT -eq 0 ]
  then
    echo "\e[90m$FILE \e[92mCompiled\e[39m!"
  else
    HAS_ERROR=1
  fi
done

exit $HAS_ERROR
