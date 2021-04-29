require 'dm-core'
require 'dm-migrations'

# Configure Database
configure :development do
  DataMapper.setup(
    :default,
    "sqlite3://#{Dir.pwd}/data.db"
  )
end

configure :production do
  DataMapper.setup(
    :default,
    ENV['DATABASE_URL']
  )
end

class Person
  include DataMapper::Resource

  property :username, String, key: true
  property :password, String
  property :totalwin, Integer
  property :totalloss, Integer
  property :totalprofit, Integer
  
end

DataMapper.auto_migrate!

