require 'rubygems'
require 'statsmix'
require 'net/http'
require 'uri'

class Dotabuff
	def initialize
	end
	def fetch
		response = StatsMix.track("SAK_ATAK", 1)
		if StatsMix.error
		  Rails.logger "Error: #{StatsMix.error}"
		end
		return response
	end

	def fetch_sak_atak
		uri = URI.parse("https://dotabuff.com/players/48161428")

		# Shortcut
		response = Net::HTTP.get_response(uri)
		return "derp"
	end
end