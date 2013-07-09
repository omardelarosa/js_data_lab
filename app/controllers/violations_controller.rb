class ViolationsController < ApplicationController
	def index
        if params[:zip]
    		@violations = Violation.where(:ZIPCODE => params[:zip])
        end
	end

    def json
        if params[:zip]
            @violations = Violation.where(:ZIPCODE => params[:zip])
            render :json
        end
    end

end