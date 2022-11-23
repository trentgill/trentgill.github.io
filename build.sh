cat head.htm_ > index.html  # copy header 
cmark index.md >> index.html # convert md to html & append
cat foot.htm_ >> index.html # append footer to index.html
