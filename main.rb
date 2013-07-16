require 'sinatra'
require 'slim'
require 'sass'
require 'bourbon'
require './milkpunch'

configure :development do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end

get '/' do
  @milkpunches = Milkpunch.all
end

get '/new' do
  @milkpunch = Milkpunch.new
  redirect '/'
end

get('/styles.css'){ scss :styles }

helpers do
  def css(*stylesheets)
    stylesheets.map do |stylesheet|
      "<link href=\"/#{stylesheet}.css\" media=\"screen, projection\" rel=\"stylesheet\" />"
    end.join
  end
end
