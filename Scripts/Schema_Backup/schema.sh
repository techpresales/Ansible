######################################################################################
#Navigate to Workspace
cd /scratch/gsh/ansible/GSH_DemoLab/workspace/Database_Schema_Backup
#Navigate to Workspace
######################################################################################
#Delete the Log and TXT files before Running Ansible Playbook
FILE="Schema_Backup.retry"
if [ -f "$FILE" ]
then
 rm Schema_Backup.retry schemabkp.txt grep_mail_schemabkp.txt
else
 rm schemabkp.txt grep_mail_schemabkp.txt
fi
#Delete the Log and TXT files before Running Ansible Playbook
######################################################################################
#Execute AnsiblePlaybook
ansible-playbook Schema_Backup.yml -u gsh -v > schemabkp.txt
#Execute AnsiblePlaybook
######################################################################################
#Grep and AWK for preparing Mail table
grep -A 30 "PLAY RECAP" schemabkp.txt > grep_mail_schemabkp.txt

awk '{print "<tr><td>"$0"</td></tr>"}' grep_mail_schemabkp.txt > /scratch/gsh/ansible/GSH_DemoLab/Mail/mail_schemabkp.txt
#Grep and AWK for preparing Mail table
######################################################################################
#Check if ansible-playbook execution is failed or success: exit1 - Failed, exit0 - Success
FILE="Schema_Backup.retry"
if [ -f "$FILE" ]
then
 exit 1
else
 exit 0
fi
#Check if ansible-playbook execution is failed or success: exit1 - Failed, exit0 - Success
######################################################################################
