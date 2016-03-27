#require 'httparty'

class EffortsController < ApplicationController
  def submit_efforts
    binding.pry
    @effort
    #curl -k https://localhost:8088/services/collector -H 'Authorization: Splunk 6578F62B-9D1E-446A-867D-7A09704A6EA7' -d '{"event":{"message":"$message","project":"$project","week":"$week","duration":"$duration"}}'
    #{"event":
    #  {
    #  "message":"$message",
    #  "category":"$category",
    #  "initiative":"$initiative",
    #  "week":"$week",
    #  "duration":"$duration",
    #  "resource":"$username",
    #  "eventtype":"effort_tracking"
    #  }
    #}
    @server = 'localhost'
    @port = '8088'
    @service = '/services/collector'
    @api_key = '6578F62B-9D1E-446A-867D-7A09704A6EA7'
    #Joining the variables to build the url
    @url = 'https://'+@server+':'+@port+@service
    #Building the authstring with the api_key
    @authstring = 'Authorization: Splunk '+@api_key
    redirect_to  new_efforts_path
  end
end
