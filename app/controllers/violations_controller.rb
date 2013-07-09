class ViolationsController < ApplicationController
	def index
        if params[:zip]
    		@violations = Violation.where(:ZIPCODE => params[:zip])
        end
	end

    def json
        if params[:zip]
            @violations = Violation.where(:ZIPCODE => params[:zip])
            #convert instance variable to json
            render :json => @violations.to_json
        else
            #handles lack of query
            render :json => ["No data"].to_json
        end
    end

    def morris
        
    end

end