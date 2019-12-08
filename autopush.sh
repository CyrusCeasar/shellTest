#!/usr/bin/bash
. $(dirname "$0")/colors.sh
PROJECT_PATH="/var/www/personalservice"
FILE_NAME="translate_record.sqlite3"
cd $PROJECT_PATH
pwd
RESULT=$(git diff master:$FILE_NAME $FILE_NAME)
if [  ${#RESULT} -gt 0 ]; then
  echo "true"
  git commit -m "auto commit" $FILE_NAME && git push original master
	echo -e "${Red} commit success"
else
  echo "false"
fi


