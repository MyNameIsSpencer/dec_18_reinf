require 'HTTParty'

representatives_response = HTTParty.get('https://represent.opennorth.ca/representatives/')

representatives_json = JSON.parse(representatives_response.body)


#Exercise 2
reps = []

representatives_json['objects'].each do |object|
  reps << object['name']
end

puts reps
