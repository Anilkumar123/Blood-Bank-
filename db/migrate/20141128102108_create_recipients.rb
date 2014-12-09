class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
    	t.string :name
    	t.string :address
    	t.string :location
    	t.string :hospital_name
    	t.integer :ph_number
    	t.string :email

      t.timestamps
    end
  end
end
