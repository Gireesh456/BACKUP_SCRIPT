# BACKUP_SCRIPT

**OVERVIEW:**
This Script provides an automated backup procedure scheduled at 12am every-day. The scheduling part is done using Cron-tabs.
The Script efficiently Backup files by avoiding redundant overhead of copying files which are not modified Since last backup.

**USAGE OF THE SCRIPT:**
./practice.sh -d "destination" -s "source" -o "backup_statistics.csv"
These source, destination, statistics CSV file should be command line arguements, can be specified in any order with the corresponding options.

**OPTIONS:**

| Option | Arguement | Specifications |
|---|---|---|
| -s | source | Specifies the Source directory which contain files to be backed up.  |
| -d | destination | Specifies the Destination directory where backed-up copies of files are to be stored. This is created at the path provided if doesn't exist prior to running of the script.  |
| -o | Statistics | The Statistics of the every back-up such as run-time and number of files backed up are stored here for future reference. This output file need note be provided at command line, If not provided one will be created. |


**SCHEDULING AND CRON-TABS:**
We can schedule the process by 
