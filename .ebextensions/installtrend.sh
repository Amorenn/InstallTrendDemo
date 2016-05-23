commands:
        create_install_trend_folder:
                command: "mkdir /opt/elasticbeanstalk/hooks/appdeploy/installtrend"
                ignoreErrors: true
files:
        "/opt/elasticbeanstalk/hooks/appdeploy/installtrend/1_install_trend.sh":
                mode: "000755"
                owner: root
                group: root
                content: |
				#!/usr/bin/env bash
				wget https://app.deepsecurity.trendmicro.com:443/software/agent/amzn1/x86_64/ -O /tmp/agent.rpm --quiet
				rpm -ihv /tmp/agent.rpm
				sleep 15
				/opt/ds_agent/dsa_control -r
				/opt/ds_agent/dsa_control -a dsm://agents.deepsecurity.trendmicro.com:443/ "tenantID:6F8DA5CA-B30E-1F2A-B5FE-86DBFAA8E7D9" "tenantPassword:C8D84FEA-21A5-4988-2779-ADB8EE09CD31"