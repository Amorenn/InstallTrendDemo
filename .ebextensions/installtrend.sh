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
                #!/bin/bash
                mkdir /tstdir/