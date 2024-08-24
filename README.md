# BACKUP_SCRIPT
| Option | Arguement | Requirements |
|---|---|---|
| -s | source | The directory that should be back-up, This must be the script|
| -d | destination | This is created even  |
| -o | Statistics | The Statistics of the every back-up are stored here for future use |

**RUNNING THE SCRIPT:**

./SCRIPT_NAME -d "destination" -s "source" -o "statistics file"
These source, destination, statistics CSV file should be command line arguements, can be specified in any order with the corresponding options.

we will use crontabs to schedule the back-up every-day at 12am.

This will update the files in further back-ups only if there changes since last back-up. This script efficiently performs backup by checking Modified times of files.
