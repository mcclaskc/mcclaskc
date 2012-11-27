require 'dotabuff'
require 'net/http'
require 'uri'

class HomeController < ActionController::Base
  def index
 #  	uri = URI.parse("https://dotabuff.com/players/48161428")
	# http = Net::HTTP.new(uri.host, uri.port)
	# http.use_ssl = true
	# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

	# request = Net::HTTP::Get.new(uri.request_uri)

	# response = http.request(request)
 #  	@message = response.body#Dotabuff.new.fetch_sak_atak
      redirect_to 'https://docs.google.com/spreadsheet/viewform?formkey=dGdpdUVGeGcxci1HOThTZmVUbXE2a2c6MQ#gid=0' unless params['shitty_wizard	']
  end
  def show
  end
end
