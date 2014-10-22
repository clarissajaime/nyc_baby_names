class CreateBabyNames < ActiveRecord::Migration
  def change
  	create_table :baby_names do |t|
  		t.integer :birth_year
  		t.string :gender
  		t.string :name 
  		t.integer :count
  		t.integer :rank

  		t.timestamps
  	end
  end
end
