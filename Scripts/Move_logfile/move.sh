######################################################################################
#Navigate to Workspace
cd /scratch/gsh/ansible/GSH_DemoLab/workspace/Move_SchemaBkp_CentralServer
#Navigate to Workspace
######################################################################################
#Delete the Log and TXT files before Running Ansible Playbook
FILE="Move_logfile.retry"
if [ -f "$FILE" ]
then
 rm Move_logfile.retry MoveDMP.txt grep_MoveDMP.txt
else
 rm MoveDMP.txt grep_MoveDMP.txt
fi
#Delete the Log and TXT files before Running Ansible Playbook
######################################################################################
#Execute AnsiblePlaybook
ansible-playbook Move_logfile.yml -u gsh -v > MoveDMP.txt
#Execute AnsiblePlaybook
######################################################################################
#Grep and AWK for preparing Mail table
grep -A 30 "PLAY RECAP" MoveDMP.txt > grep_MoveDMP.txt

awk '{print "<tr><td>"$0"</td></tr>"}' grep_MoveDMP.txt > /scratch/gsh/ansible/GSH_DemoLab/Mail/mail_MoveDMP.txt
#Grep and AWK for preparing Mail table
######################################################################################
#Check if ansible-playbook execution is failed or success: exit1 - Failed, exit0 - Success
FILE="Move_logfile.retry"
if [ -f "$FILE" ]
then
 exit 1
else
 exit 0
fi
#Check if ansible-playbook execution is failed or success: exit1 - Failed, exit0 - Success
######################################################################################
