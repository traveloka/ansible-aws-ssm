# aws-ssm-agent #

Installs aws-ssm-agent.

Only works on Ubuntu machine.
If OS is Ubuntu 14 or lower, then this role will install SSM agent using apt and debian package downloaded (during run time) from AWS.
If OS is Ubuntu 16 or greater, then this role will be using Snap to install the agent.


## Requirements ##

No special pre-requisites.

## Role Variables ##

### Defaults ###


    - name: aws_region
      desc: AWS region
      value: ap-southeast-1

    - name: aws_ssm_agent_url
      desc: uri of aws-ssm-agent binary
      value: https://amazon-ssm-{{ aws_region }}.s3.amazonaws.com/latest/debian_amd64/amazon-ssm-agent.deb

### Vars ###

    - name: aws_ssm_agent_service_name 
      desc: aws-ssm-agent service name
      value: amazon-ssm-agent

## Dependencies ##

None

## Example Playbook ##

    - hosts: servers
      roles:
        - role: aws-ssm-agent
