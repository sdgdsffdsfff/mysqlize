# mysqlize.rb
require 'sinatra'
require 'json'
require 'mongo'
require 'rest_client'
#asda
set :port, 8080
include Mongo
configure do
  conn = MongoClient.new("localhost", 27017)
  set :mong_connection, conn
  set :mongo_db, conn.db('mysqlize')
end

# edit
get '/xtrabackup' do
  erb :index
end

get '/mysqldump' do
  erb :index
end

get '/mysqlbackup' do
  erb :index
end

get '/options/:tool/:version' do
  content_type :json
  settings.mongo_db['options'].find('tool' => params[:tool], 'versions' => { '$in' => [params[:version]]}).to_a.to_json
end

# 404 Error
not_found do
  status 404
  erb :error404
end
