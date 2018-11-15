require 'net/http'
require 'uri'
require 'json'

module UsersHelper

    def get_website(category)
      in_two_week=(Time.now + (2*7*24*60*60)).strftime("%Y-%m-%d")
      now=(Time.now).strftime("%Y-%m-%d")
# "
#
      url = URI.parse("https://api.predicthq.com/v1/events/?within=200km@51.5187516,-0.0836261&?country=GB&?limit=10&?category=#{category}&active.gte=#{now}&active.lte=#{in_two_week}&?sort=rank")

      req = Net::HTTP::Get.new(url.path)
      req.add_field("Authorization", "Bearer #{ENV["predicthq"]}")

      res = Net::HTTP.new(url.host, url.port)
      res.use_ssl = true
      res.start do |http|
        # raise
        JSON.parse(http.request(req).body)["results"][rand(2)]
      end
    end



    def google_map(c1,c2)
      "https://maps.googleapis.com/maps/api/staticmap?center=#{c2},#{c1}&zoom=17&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C#{c1},#{c2}&key=AIzaSyDSCn98mXt3dzzS_TF_CtqQhLzYU0Cx5Mc"
    end



    def get_website_address(c1,c2)
      url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=#{c2},#{c1}&key=AIzaSyDSCn98mXt3dzzS_TF_CtqQhLzYU0Cx5Mc"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)

      JSON.parse(response.body)["results"][0]["formatted_address"]
    end



end
