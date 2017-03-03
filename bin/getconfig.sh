#! /bin/bash
# Get Configuration
echo "##############################"
echo  CONFIG SETTINGS
echo "##############################"
echo  PROJ_SETTINGS_DIR $PROJ_SETTINGS_DIR
echo  DEPLOY_TARGET $DEPLOY_TARGET

# 2017-03-02 troubleshooting, so I've disabled this if clause temporarily
#
#if [ "${DEPLOY_TARGET,,}" == "local" ]; then
#    echo -e "#####################################################"
#    echo -e  USING LOCAL CONFIG. MAKE SURE YOU HAVE A LOCAL CONFIG
#    echo -e "#####################################################"
#else
    echo -e "########################################"
    echo -e  "USING {DEPLOY_TARGET^^} CONFIG"
    echo -e  "USING THE $CONFIG_BUCKET CONFIG BUCKET"
    echo -e "########################################"
    export PATH=$PATH:~/.local/bin
# 2017-03-02 troubleshooting, so I'm overriding the $DEPLOY_TARGET usage temporarily''
# 2017-03-02 also overriding $CONFIG_BUCKET since Travis keeps claiming it's an empty, " " or null value at runtime
#
#    aws s3 cp \
#          s3://$CONFIG_BUCKET/${DEPLOY_TARGET,,}/project_config.py \
#          $PROJ_SETTINGS_DIR/project_config.py;
#    aws s3 cp \
#          s3://mikecanuckbucket/INTEGRATION/project_config.py \
#          $PROJ_SETTINGS_DIR/project_config.py;
    aws s3 cp \
          s3://cfn-templates-hacko-infra/integration/project_config.py \
          $PROJ_SETTINGS_DIR/project_config.py;
#fi
