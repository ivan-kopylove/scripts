import os
import random
import re
import sys


if len(sys.argv) < 2:
    print("filename is not provided")
    exit(0)

file_name_original = sys.argv[1]

file_name = os.path.splitext(file_name_original)[0]
file_extension = os.path.splitext(file_name_original)[1]
file_last_numbers = None

search = re.search('(\d+)', file_name_original)
if search is not None:
    lastNumbers = search.group(0)
    file_name = file_name.replace(lastNumbers, '')
    file_last_numbers = int(lastNumbers)
    file_last_numbers += 1
else:
    exit(0)

f = open(file_name_original, 'r', encoding="utf8")
lines = f.readlines()
if len(lines) < 1:
    print("No lines in file")
    exit(0)
f.close()

random_index = random.randint(0, len(lines) - 1)
random_line = lines[random_index]

print(random_line)
del lines[random_index]

with open(file_name_original, 'w', encoding="utf8") as txt_file:
    for line in lines:
        txt_file.write(line)

with open(file_name + str(file_last_numbers) + file_extension, 'a', encoding="utf8") as txt_file:
    txt_file.write(random_line)
