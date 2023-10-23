#!/bin/bash

CURRENT_DIR=$(pwd)
JMETER_HOME="$CURRENT_DIR/apache-jmeter-5.6.2"
TEST_PLAN_PATH="$CURRENT_DIR/playgrafana.jmx"
OUTPUT_LOG_PATH="$CURRENT_DIR/log/output_log.jtl"
THREADS="1"
RAMPUP="10"
DURATION="600"
THINKTIME="3000"
RESTARTCOUNT="5"

echo "JMeter Home: $JMETER_HOME"
echo "Test Plan Path: $TEST_PLAN_PATH"
echo "Output Log Path: $OUTPUT_LOG_PATH"
echo "Threads: $THREADS"
echo "Ramp-up: $RAMPUP"
echo "Duration: $DURATION"
echo "Think Time: $THINKTIME"
echo "Restart Count: $RESTARTCOUNT"

$JMETER_HOME/bin/jmeter -n -t "$TEST_PLAN_PATH" -l "$OUTPUT_LOG_PATH" -Jthreads="$THREADS" -Jrampup="$RAMPUP" -Jduration="$DURATION" -Jrestartcount="$RESTARTCOUNT" -Jthinktime="$THINKTIME"
