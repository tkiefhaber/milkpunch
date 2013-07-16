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
  @left_punch = left_punch
  @right_punch = right_punch
  slim :milkpunch
end

post '/' do
  Milkpunch.create(:boob => params[:boob], :milkpunch => params[:milkpunch])
  redirect to('/')
end

get('/styles.css'){ scss :styles }

helpers do
  def css(*stylesheets)
    stylesheets.map do |stylesheet|
      "<link href=\"/#{stylesheet}.css\" media=\"screen, projection\" rel=\"stylesheet\" />"
    end.join
  end

  def left_punch
    Milkpunch.last(:boob => 'left')
  end

  def right_punch
    Milkpunch.last(:boob => 'right')
  end
end
