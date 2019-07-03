# Smanjuje veličinu svih PDF datoteka iz mape pomoću ps2pdf skripte ghostscripta.
# Sažete verzije datoteka smješta u mapu rez, a izvorne briše.
#
# Sažima sve PDF datoteke iz mape
#   ./compresspdf.sh *
# Sažima sve PDF datoteke iz mape koje počinju slovom Z
#   ./compresspdf.sh Z*
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



