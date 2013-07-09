#this file cleans CSV files from NYC open data by removing quotes

require 'csv'

source_file = ARGV[0]
if ARGV[1]
	target_file = ARGV[1]
else
	target_file = "./cleaned_data.csv"
end
file = File.open(source_file,'r')
new_file = CSV.open(target_file, "wb",{:quote_char => " "})

file.each_line do |line|
	#removes quotes
	line.gsub!(/\"/,"")
	# removes extra whitespace chars
	line.gsub!(/\s{2,}/," ")
	#turns line into an array for CSV append function to work
	clean_line = [line]
	#adds cleaned line to CSV file
	new_file.add_row(clean_line)
end

new_file.close
file.close