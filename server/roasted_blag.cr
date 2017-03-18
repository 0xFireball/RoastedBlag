require "kemal"
require "./roasted_blag/*"

serve_static({"gzip" => true, "dir_listing" => false})
public_folder("./client/dist") # assets

# render the built webpack bundle
get "/" do
  render "client/dist/index.html.ecr"
end

get "/meta/version" do
  RoastedBlag::VERSION
end

Kemal.run(5000)