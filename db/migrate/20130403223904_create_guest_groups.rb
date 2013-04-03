class CreateGuestGroups < ActiveRecord::Migration
  def change
    create_table :guest_groups do |t|
      t.string :full_name
      t.string :email
      t.integer :kids
      t.boolean :plus_one

      t.timestamps
    end
  end
end
