require 'HTTParty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)


#Exercise 1
wards = []

toronto_wards_json['objects'].each do |object|
  wards << object['name']
end

puts wards





# bootom
