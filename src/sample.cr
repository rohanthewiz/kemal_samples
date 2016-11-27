# Dont need this at the moment #require "./sample/*"
require "kemal"

module Sample
  get "/" do
    "Hello from application home"
  end
  
  get "/myapi" do |ctx|
  	ctx.response.content_type = "application/json"
  	{name: "Serdar", age: 27}.to_json
  end
  
  get "/hello/:name" do |ctx|
  	name = ctx.params.url["name"]
  	render "views/hello.ecr", "views/layouts/layout.ecr"
  end
  
  # Optional custom 404 handler
  error 404 do
    "Dude, I couldn't find that page!"
  end
end

Kemal.run
