Schema Backup workspace path "/scratch/gsh/ansible/GSH_DemoLab/workspace/Database_Schema_Backup"
The flow for Schema Backup execution is as list below.

schema.sh --> Schema_Backup.yml --> Schema_backup.sh --> mail_schemabkp.txt

schema.sh - Contains the Playbook details with pre deleting the old logs files and prepars mail_schemabkp.txt Mailer format file

Schema_Backup.yml - Contains the server details on which this job to be executed.

Schema_backup.sh - This file contains the EXPDP command and the Property file details.

mail_schemabkp.txt - Provides the mailer format
