all: index.html

force:
	bikeshed -f spec ./index.src.html

CR:
	bikeshed -f spec --md-status=CR --md-deadline=2016-09-20 ./index.src.html ./CR.html

index.html: index.src.html
	bikeshed -f spec ./index.src.html

publish:
	git push origin master master:gh-pages

