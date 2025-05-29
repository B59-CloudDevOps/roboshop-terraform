# roboshop-terraform


1) Infra will be provision by the terraform.
2) WS via TF will be connecting to the created instance.
3) Ensure the AMI has Ansible installed or you need to install ansible before the start of ansible-pull
4) On the top of the instance, ansible-pull will be executed.


> Ensure secrets are out of the terraform
    1) Remote exec has userName & password that has to come from vault
    2) vault token should be coming from jenkins
    3) Ensure job should be running from the ui.