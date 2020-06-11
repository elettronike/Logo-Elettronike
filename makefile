
# usage:     make git m="your message "

git:
	git add .
	git commit -m "$m"
	git push -u origin master 

