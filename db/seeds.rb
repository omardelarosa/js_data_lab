# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach('./db/csv/cleaned_data.csv') do |row|

	v = Violation.new(:CAMIS => row[0],
	   :DBA => row[1],
	   :BORO => row[2],
	   :BUILDING => row[3],
	   :STREET => row[4],
	   :ZIPCODE => row[5],
	   :PHONE => row[6],
	   :CUISINECODE => row[7],
	   :INSPDATE => row[8],
	   :ACTION => row[9],
	   :VIOLCODE => row[10],
	   :SCORE => row[11],
	   :CURRENTGRADE => row[12],
	   :GRADEDATE => row[13],
	   :RECORDDATE => row[14])

	  v.save!
end