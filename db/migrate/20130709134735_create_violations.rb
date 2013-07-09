class CreateViolations < ActiveRecord::Migration
	#CAMIS","DBA","BORO","BUILDING","STREET","ZIPCODE","PHONE","CUISINECODE","INSPDATE","ACTION","VIOLCODE","SCORE","CURRENTGRADE","GRADEDATE","RECORDDATE"
  	#"40356018","RIVIERA CATERER","3","2780","STILLWELL AVENUE","11224","7183723031","03","2013-06-05 00:00:00","D","10F","7","A","2013-06-05 00:00:00","2013-07-05 01:01:05.957000000"
  def change
    create_table :violations do |t|
    	t.integer "CAMIS"
    	t.string "DBA"
    	t.integer "BORO"
    	t.integer "BUILDING"
    	t.string "STREET"
    	t.integer "ZIPCODE"
    	t.string "PHONE"
    	t.string "CUISINECODE"
    	t.date "INSPDATE"
    	t.string "ACTION"
    	t.string "VIOLCODE"
    	t.integer "SCORE"
    	t.string "CURRENTGRADE"
    	t.date "GRADEDATE"
    	t.date "RECORDDATE"
      	t.timestamps
    end
  end
end