class AddClubsTable < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :model
      t.string :company
      t.timestamps
    end
  end
end
