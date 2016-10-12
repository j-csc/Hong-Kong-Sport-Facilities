require "net/http"
require "uri"
require "rubygems"
require "json"

file = File.open("./finalList.json", "r")
contents = file.read
parsedContent = JSON.parse(contents)
keys = parsedContent["Sports"].keys
p keys
# keys.each do |x|
# 	parsedContent["Sports"][x].each do |x|
# 		address = x["Address_en"]
# 		processed_address = address.gsub(/\s+/, "+")
# 		prepURI = "https://maps.googleapis.com/maps/api/geocode/json?address=#{processed_address}&key=AIzaSyAYAn6mrk3UtGH3l4RHi7Ih_WyD-dfOSE0"
# 		# prepURI = "https://maps.googleapis.com/maps/api/geocode/json?address=#{processed_address}&key=AIzaSyDdoYmCePZY70kvewcddhWWDkJiy9wRmmY"
# 		uri = URI(prepURI)
# 		gMapsResponse = Net::HTTP.get(uri)
# 		parsedGMapsResponse = JSON.parse(gMapsResponse)
# 		if parsedGMapsResponse['status'].eql? 'ZERO_RESULTS'
# 			p x
# 		end
# 		x["lat"] = parsedGMapsResponse['results'][0]['geometry']['location']['lat']
# 		x["lng"] = parsedGMapsResponse['results'][0]['geometry']['location']['lng']
# 	end
# end
# p parsedContent.to_json
# File.write('./sportsFile.json', parsedContent.to_json)