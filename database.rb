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
  has_many :resources
end

class Resource < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
end

class User < ActiveRecord::Base

end
