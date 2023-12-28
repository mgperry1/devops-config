# On the servers had to config mgp17171 with a home dir on /local
# in setting up mgp17171 I had to add local entry for /etc/passwd 
# and /etc/shadow as well puting the authorized_keys with the
# key for the credential in AWX
# 
# The Git webhook points to awx.gsk.com prod

#Playbook testing
cd ~/repos/config-drift/ci-cd$

#Test the Service up
ansible-playbook -i ./deploy.ini testdevup.yml --ask-vault

#Test CI-CD
ansible-playbook -i ./deploy.ini installdev.yml --ask-vault