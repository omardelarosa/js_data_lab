class Violation < ActiveRecord::Base
    attr_accessible :CAMIS, :DBA, :BORO, :BUILDING, :STREET, :ZIPCODE, :PHONE, :CUISINECODE, :INSPDATE, :ACTION, :VIOLCODE, :SCORE, :CURRENTGRADE, :GRADEDATE, :RECORDDATE
end
