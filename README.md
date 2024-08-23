# BACKUP_SCRIPT
| Option | Arguement | Semantics |
|---|---|---|
| -s | source | The directory that should be back-up |
| -d | destination | The directory where the copy files to be stored |
| -o | Statistics | The Statistics of the every back-up are stored here for future use |

**RUNNING THE SCRIPT:**
./SCRIPT_NAME -d "destination" -s "source" -o "statistics file"
These source, destination, statistics CSV file should be command line arguements.

we will use crontabs to schedule the back-up every-day at 12am.

Every file in the source directory containing vowels in their file names are back-up files.
Any directory in source with no file in it matching the pattern will not be part of destination. 

This will update the files in further back-upss only if there changes in the source-directory copy of the file after the previous back-up for improving efficiency of the script, this is executed by checking time stamps of the files in source and destination.
