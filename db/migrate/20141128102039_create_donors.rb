class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :gender
    	t.string :address
    	t.string :location
    	t.integer :age
    	t.integer :ph_number
    	t.string  :blood_group




      t.timestamps
    end
  end
end
