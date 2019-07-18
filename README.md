# list_file_extensions
A small bash script that prints a table showing what file extensions are within a folder recursively

For the life of me i couldn't find a simple linux command or python script that would list / count the file extensions within the current working directory, so i made my own.

This script does the following:

	*	Searches the current working directory for all files,
	*	Translates all results into lowercase,
	*	Strips the results down to extensions,
	*	Counts the number of unique matches,
	*	Sorts by number of unique matches

Installation:

	1:	open linux terminal
	2:	git clone https://github.com/Hoppi164/list_file_extensions.git
	3:	sudo cp list_file_extensions/lfe.sh /usr/local/bin/
	4:	lfe.sh

Sample Output

$ lfe.sh 

      1 .html
      1 .json
      1 .sh
      2 .csv
      3 .xlsx
      4 .gz
      5 .png
      7 .pdf
      8 .css
     19 .js
     54 .jpg
     64 .svg


