#!/usr/bin/ruby
require "FileUtils"

pretext = "! Last modified: "
timestamp = Time.new.gmtime.strftime("%d %B %Y %R %Z")
original_file = "obtrusive.txt"
temp_file = original_file + ".tmp"

FileUtils.mv original_file, temp_file

File.open(temp_file, "r") { |file|
	text = Array.new
	file.each_line { |line|
		if line.include? pretext then line = pretext + timestamp + "\n" end
		text.push line
	}
	File.open(original_file, "w") { |file|
		file.write text.join.to_s
	}
}

FileUtils.rm temp_file
