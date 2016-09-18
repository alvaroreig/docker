#/bin/bash

DATESTR=`date "+%Y_%m_%d"`
CALIBRE_RECIPE="The Economist.recipe"
WORK_DIR="/tmp"
OUTPUTFILE="$WORK_DIR/the_economist_$DATESTR.mobi"

SUBJECTPREFIX="The Economist $DATESTR"
CONTENTPREFIX="Attached is the your periodical downloaded by calibre"

# Output vars
echo "$SMTP"
echo "$PORT"
echo "$USER"
echo "PASSWORD XX"
echo "$EMAILS"

# email the files
IFS=', ' read -r -a array <<< "$EMAILS"

echo "$array"

# Create mobi file
ebook-convert "$CALIBRE_RECIPE" "$OUTPUTFILE"



for TO in "${array[@]}"
do
  echo "Sending $OUTFILE to $TO"
  calibre-smtp --attachment "$OUTPUTFILE" --relay "$SMTP" --port "$PORT" --username "$USER" --password "$PASSWD"  --encryption-method TLS --subject "$SUBJECTPREFIX" "$USER" "$TO"  "$CONTENTPREFIX ($DATESTR)"
done
