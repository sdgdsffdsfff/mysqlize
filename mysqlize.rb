# mysqlize.rb
require 'sinatra'
require 'json'
require 'mongo'
require 'rest_client'
#asda
set :port, 80
include Mongo
configure do
  conn = MongoClient.new("localhost", 27017)
  set :mong_connection, conn
  set :mongo_db, conn.db('mysqlize')
end

# edit
get '/' do
  erb :index
end

get '/options/:tool/:version' do
  content_type :json
  settings.mongo_db['options'].find('tool' => params[:tool], 'versions' => { '$in' => [params[:version]]}).to_a.to_json
end


not_found do
  content_type :json
  halt 404, { error: 'URL not found' }.to_json
end
