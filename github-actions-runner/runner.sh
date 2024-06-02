#!/bin/bash
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-arm-2.316.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.316.1/actions-runner-linux-arm-2.316.1.tar.gz
tar xzf ./actions-runner-linux-arm-2.316.1.tar.gz
./config.sh --url https://github.com/shankershawn/utility-scheduler --token $1 --labels raspberrypi --name raspberrypi-$(date +%s) --unattended --disableupdate
./run.sh
