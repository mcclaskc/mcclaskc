
class CassiniController < ApplicationController

	def availability
		@response = ["time1", "time2", "time3", "time4"]
		respond
	end
	def data
		@response = ["im_a_binary_object"]
		respond
	end

	def respond
		render :json => @response.to_json
	end
end
