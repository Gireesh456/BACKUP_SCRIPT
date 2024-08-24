# BACKUP_SCRIPT

**OVERVIEW:**
This Script provides an automated backup procedure scheduled at 12am every-day. The scheduling part is done using Cron-tabs.
The Script efficiently Backup files by avoiding redundant overhead of copying files which are not modified Since last backup.

**USAGE OF THE SCRIPT:**
bash practice.sh -d "destination" -s "source" -o "backup_statistics.csv"
The source directotry, The destination directory, backup_statistics.csv file are command line arguements for the script, can be specified in any order with the corresponding options.

**OPTIONS:**

| Option | Arguement | Specifications |
|---|---|---|
| -s | source | Specifies the Source directory which contain files to be backed up.  |
| -d | destination | Specifies the Destination directory where backed-up copies of files are to be stored. This is created at the path provided if doesn't exist prior to running of the script.  |
| -o | Statistics | The Statistics of the every back-up such as run-time and number of files backed up are stored here for future reference. This output file need note be provided at command line, If not provided one will be created. |


**SCHEDULING AND CRON-TABS:**

crontab can be opened by using the command "crontab -e".

We can automate the backup to a systematic and regular intervals by providing the approriate time and the command for running the script on approriate directories in the crontab.


**GENERAL_FORMAT:** 

<minutes> <hours> <day_of_month> <month_of_year> <day_of_week> <path_to_script> <-s source_directory> <-d destination_directory> <-o output_file>.

Fields that are not applicable for specifying our custom scheduling can be replaced with '*'.

The following is the format for running the script at 12am everyday.

0 0 * * * bash <path_to_script> <-s source_directory> <-d destination_directory> <-o output_file>.


