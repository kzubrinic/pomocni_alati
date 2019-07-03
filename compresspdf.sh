# Smanjuje veličinu svih PDF datoteka iz mape pomoću ps2pdf skripte ghostscripta.
# Sažete verzije datoteka smješta u mapu rez, a izvorne briše.
#
# Primjena: ./compresspdf.sh 
#
if [ ! -d rez ]; then
    mkdir rez
fi
for FILE in *.pdf
do
   if test -f "$FILE"; then
      echo "Radi ===> $FILE"
      ps2pdf "$FILE" "rez/$FILE"
      rm "$FILE"
   fi
done
