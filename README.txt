** instructions only work for pdf files, not for epub

1. Firefox install "Export Cookies"
2. Goto https://jigsaw.vitalsource.com/login/setup?return=%2F
3. Login
   After login, you should see "Something went wrong"
4. Go to https://jigsaw.vitalsource.com/books/<VBID>/content/image/1.jpg
   (replace <VBID> with the actual book id)
   check if the ebook is ok 
5. Click on "Export cookies" plugin, export vitalsource.com to "cookies.txt"
6. Run "vitalsource.sh <VBID>"
   * to find VBID, click on the (i) on the web version

## if the image shows "Please refresh your browser", starts from step 2 to step 5 again (re-download the cookies), edit the STARTPAGE in .sh file to continue the page (don't worry about ENDPAGE)





* For windows, to run .sh, install cygwin or ubuntu
