require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get "/" do
  return "Hello world"
end





# parameters in paths
get '/hello/:name' do
  "Hello #{params['name']}!"
end

get '/hello/2/:name' do |n|
  "Hello #{n}!"
end


# splats

get '/favorite/*/is/*' do |topic, thing|
  "My favorite #{topic} is a #{thing}!"
end


# define special conditions
set(:probability) { |value| condition { rand <= value } }

get '/win_a_car', :probability => 0.1 do
  "You won!"
end

get '/win_a_car' do
  "Sorry, you lost."
end


# returning values

class Stream
  def each
    10000.times { |i| yield "#{i}\n"}
  end
end

get '/stream' do
  Stream.new
end

# loading of templates
get '/hello/' do
  greeting = params[:greeting] || "Hi There"
  erb :index, :locals => { 'greeting' => greeting }
end


# rendering different template engines, particularly haml
set :haml, :format => :html5

get '/haml-example' do
  digging_haml = params[:likehaml] || "dunno"
  haml :haml_index, :locals => { 'digging_haml' => digging_haml }
end


# redirection
get '/foo' do
  redirect to('/')
end
