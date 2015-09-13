#!/usr/bin/env python
import re
from pprint import pprint
limit_start = "!--- Site-Specific Selectors"
limit_end = "!--- Global Filters / Scripts & Libraries"

# parse out the Site-Specific Selectors part
started = False
site_list = []
with open('obtrusive.txt', 'r') as f:
    for line in f:
        if not started:
            m = re.search(limit_start, line)
            if m:
                started = True
        else:
            m = re.search(limit_end, line)
            if m:
                break
            else:
                site_list.append(line)

# parse autoadd file
comments = []
with open('auto-add.txt', 'r') as f:
    with open('imported.txt', 'a+') as im:
        for line in f:
            if line[0] != "!":
                site_list.append(line)
                im.write(line)
            else:
                comments.append(line)

# empty autoadd file
with open('auto-add.txt', 'w') as f:
    for line in comments:
        f.write(line)

site_list.sort()

# merge sorted list with current file
started = False
after = False
added = False
final_file = []
with open('obtrusive.txt', 'r') as f:
    for line in f:
        if not started:
            final_file.append(line)
            m = re.search(limit_start, line)
            if m:
                started = True
        elif not added:
            final_file.extend(site_list)
            added = True
        elif after:
            final_file.append(line)
        else:
            m = re.search(limit_end, line)
            if m:
                final_file.append(line)
                after = True

# rewrite filter file
with open('obtrusive.txt', 'w') as f:
    for line in final_file:
        f.write(line)
