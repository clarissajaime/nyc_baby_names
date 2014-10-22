class AddEthnicityToBabyNames < ActiveRecord::Migration
  def change
  	add_column :baby_names, :ethnicity, :string
  end
end
