Move  workspace path "/scratch/gsh/ansible/GSH_DemoLab/workspace/Move_SchemaBkp_CentralServer"
The flow for Move Dump and logfile execution is as list below.

move.sh --> Move_logfile.yml --> Movelogfiles.sh --> mail_MoveDMP.txt

move.sh - Contains the Playbook details with pre deleting the old logs files and prepars mail_MoveDMP.txt Mailer format

Move_logfile.yml - Contains the server details on which this job to be executed.

Movelogfiles.sh - This file contains the tar, scp and rm -rf commands.

mail_MoveDMP.txt - Provides the mailer format
