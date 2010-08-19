require 'sqlite3'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/base'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :dbfile =>  "db/#{Sinatra::Application.environment}.db"
)

# models
class Category < ActiveRecord::Base
end

class Resource < ActiveRecord::Base
end
