class GetEvent < ApplicationRecord

URL = "https://api.predicthq.com/v1/events/"

    def get_programs
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
    end


end
