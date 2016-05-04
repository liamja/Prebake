timestamp = $(shell TZ=UTC date +'%d %B %Y %k:%M')

.PHONY: updatetimestamp
updatetimestamp:
	sed -E -i '' "s/[0-9]{2} [a-zA-Z]+ [0-9]{4} [0-9]{2}:[0-9]{2}/$(timestamp)/" obtrusive.txt
