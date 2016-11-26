# Dont need this at the moment #require "./sample/*"
require "kemal"

module Sample
  get "/" do
    "Hello from application home"
  end
  
  error 404 do
    "Dude, I couldn't find that page!"
  end
end

Kemal.run
