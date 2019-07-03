# Smanjuje veličinu svih PDF datoteka iz mape pomoću ps2pdf skripte ghostscripta.
# Sažete verzije datoteka smješta u mapu rez, a izvorne briše.
#
# Sažima sve PDF datoteke iz mape
#   ./compresspdf.sh *.pdf
# Sažima sve PDF datoteke iz mape koje počinju slovom i
#   ./compresspdf.sh i*.pdf
# Sažima PDF datoteku radna.pdf
#   ./compresspdf.sh radna.pdf
#
if [ ! -d rez ]; then
    mkdir rez
fi
if [ $# -ne 0 ]
then
      for FILE in "$@"
      do
         if [[ $FILE == *".pdf" ]]
         then
            echo "Nasao: $FILE"
            if test -f "$FILE"; then
               echo "Radi ===> $FILE"
               ps2pdf "$FILE" "rez/$FILE"
               rm "$FILE"
            fi
         fi
      done
else
   echo "./compresspdf.sh filter_datoteke"
fi



