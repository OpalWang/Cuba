require "cuba"

Cuba.use Rack::Session::Cookie

Cuba.define do
  on get do
    on "hello" do
      res.write "Hello world!"
    end

    on default do
      res.redirect "/hello"
    end
  end
end