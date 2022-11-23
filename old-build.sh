## takes index.md, converts it to html & wraps in header & footer

# cmark --unsafe allows html code to flow through without conversion
cat head.htm_ > index.html  # copy header 
cmark --unsafe index.md >> index.html # convert md to html & append
cat foot.htm_ >> index.html # append footer to index.html

## replace 'DATE' with the date the file was edited
date=$(date -r index.md +%D)
sed -i '' -e 's#DATE#'$date'#g' index.html
