timestamp = $(shell TZ=UTC date +'%d %B %Y %k:%M')

.PHONY : all

all : update_timestamp validate_checksum

update_checksum :
	mv obtrusive.txt obtrusive.tmp
	python addChecksum.py < obtrusive.tmp > obtrusive.txt
	rm obtrusive.tmp

validate_checksum : update_checksum
	python validateChecksum.py < obtrusive.txt

update_timestamp :
	sed -E -i '' "s/[0-9]{2} [a-zA-Z]+ [0-9]{4} [0-9]{2}:[0-9]{2}/$(timestamp)/" obtrusive.txt
