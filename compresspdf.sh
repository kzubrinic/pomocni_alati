for FILE in *.pdf
do
   if test -f "$FILE"; then
      echo "Radi ===> $FILE"
      ps2pdf "$FILE" "rez/$FILE"
      rm "$FILE"
   fi
done
