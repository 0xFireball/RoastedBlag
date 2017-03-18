require "kemal"
require "json"

get "/a/data.json" do |env|
  env.response.content_type = "application/json"
  {name: "Cookie", data: 42}.to_json
end

get "/a/people/person1.json" do |env|
  env.response.content_type = "application/json"
  {name: "Bill Lol", hasPetDog: true}.to_json
end