require 'net/http'
require 'uri'
require 'json'

class Api < ApplicationRecord

    def get_website(category)
      in_two_week=(Time.now + (2*7*24*60*60)).strftime("%Y-%m-%d")
      now=(Time.now).strftime("%Y-%m-%d")

      url = URI.parse("https://api.predicthq.com/v1/events/?limit=10&category=#{category}&country=GB&active.gte=#{now}&active.lte=#{in_two_week}&sort=rank")

      req = Net::HTTP::Get.new(url.path)
      # req.add_field("Authorization", "Bearer #{ENV["predicthq"]}")
      req.add_field("Authorization", "Bearer lpQGM3yG9TZqoki03Z40pyhge78IPV")

      res = Net::HTTP.new(url.host, url.port)
      res.use_ssl = true
      res.start do |http|
        JSON.parse(http.request(req).body)["results"][rand(10)]
      end
    end


    def title(category)
      self.get_website(category)["title"]
    end

    def when(category)
      self.get_website(category)["start"]
    end

    def where(category)
      self.get_website(category)["location"]
    end

  
end
