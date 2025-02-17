grep -oE "https?://[a-zA-Z0-9._/-]+[^[:punct:] ]|www.[a-zA-Z0-9._/-]+[^[:punct:] ]" data.txt
grep -oE "\+?[0-9]{1,2}[0-9]{10}|0[0-9]{10}" data.txt
#i use {1,2} to +20,,+44
egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}' data.txt

