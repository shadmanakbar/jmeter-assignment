# Grafana Dashboard Performance Test

This project contains a performance test for the Grafana dashboard using Apache JMeter. The test simulates user interactions with the dashboard and measures response times and other performance metrics.

## Prerequisites

- Apache JMeter 5.6.2
- Grafana Dashboard URL: [https://play.grafana.org/goto/tbrpu9WSR?orgId=1](https://play.grafana.org/goto/tbrpu9WSR?orgId=1)

## Test Plan

The test plan simulates the following user journey:

1. Access the Grafana Dashboard
2. Interact with the "node" and "Event Data Source" dropdown lists
3. Select various time ranges for the dashboard

The test runs with the following virtual user configurations:

- Number of concurrent users
- Ramp-up period
- Test duration
- Think time between actions
- Maximum number of restarts for each virtual user

## Running the Test

To execute the test in non-GUI mode, use the provided shell script `entrypoint.sh`:

```bash
./entrypoint.sh

The script sets the following parameters:

JMeter Home
Test Plan Path
Output Log Path
Threads (Number of Concurrent Users)
Ramp-up Period
Duration (Test Duration)
Think Time (Time Between Actions)
Restart Count (Maximum Number of Restarts for Each Virtual User)
You can modify the script to customize these parameters as needed.

Test Results
The test results are saved in the jmeterlog/output_log.jtl file. You can analyze the results using JMeter's built-in listeners or external tools.
