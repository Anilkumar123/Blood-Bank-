class CreateBloodGroups < ActiveRecord::Migration
  def change
    create_table :blood_groups do |t|
    	t.string :blood_type
    	

      t.timestamps
    end
  end
end
