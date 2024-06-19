# Dylan Kenneth Eliot & GPT-4o ( Alpha Edition )

"""
This allows you to find all golang defined structs. 


"""

grep -rnw . -e 'type [A-Za-z0-9_]* struct {' | while IFS=: read -r file lineno rest; do echo "File: $file, Line: $lineno"; sed -n "${lineno},/}/p" "$file"; echo; done &> output_file.txt
