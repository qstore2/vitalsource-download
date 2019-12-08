#!/bin/sh
BOOK=$1
STARTPAGE=0000
ENDPAGE=2000

mkdir -p "$BOOK"


for num in $(seq -w $STARTPAGE $ENDPAGE); do
  echo Trying page $num...
  code=`curl -s -b cookies.txt -c cookies.txt "https://jigsaw.vitalsource.com/books/$BOOK/content/image/$num.jpg" -o "$BOOK/$num.jpg" -w "%{http_code}"`
  if [ $code -ne 200 ]; then
    rm -f "$BOOK/$num.jpg"
	break
  fi
done

#100-ARCHIT-65-EN-LG-E
#100-ARCHIT-65-EN-SG-E
#100-ARCHIT-64-EN-LG-E
#100-ARCHIT-64-EN-SG-E
