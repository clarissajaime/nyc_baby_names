require './app'
require 'sinatra/activerecord/rake'

namespace :db do 
	desc "seed the database from nyc baby name csv"
	task :load_data do
		require 'csv'

		CSV.foreach("./db/nyc_baby_names.csv", headers:true) do |row|

		BabyName.create!({
			birth_year: row["BRTH_YR"],
			gender: row["GNDR"],
			ethnicity: row["ETHCTY"],
			name: row["NM"],
			count: row["CNT"],
			rank: row["RNK"]
		})
		puts "#{row["NM"]} created!"
		end
	end 
end 