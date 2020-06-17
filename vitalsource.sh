#!/bin/sh
BOOK=$1
STARTPAGE=0001
ENDPAGE=2000

mkdir -p "$BOOK"

code=`curl -s -b cookies.txt -c cookies.txt "https://jigsaw.vitalsource.com/books/$BOOK/content/image/cover.jpg" -o "$BOOK/0000.jpg" -w "%{http_code}"`
if [ $code -ne 200 ]; then
  rm -f "$BOOK/0000.jpg"
fi

for num in $(seq -w $STARTPAGE $ENDPAGE); do
  echo Trying page $num...
  code=`curl -s -b cookies.txt -c cookies.txt "https://jigsaw.vitalsource.com/books/$BOOK/content/image/$num.jpg" -o "$BOOK/$num.jpg" -w "%{http_code}"`
  if [ $code -ne 200 ]; then
    rm -f "$BOOK/$num.jpg"
	break
  fi
done


