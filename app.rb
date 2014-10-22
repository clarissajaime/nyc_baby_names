require "bundler"
Bundler.require
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'nyc_baby_names'
})

require_relative 'models/baby_name'

get '/' do
  @baby_names = BabyName.all
  erb :index
end
