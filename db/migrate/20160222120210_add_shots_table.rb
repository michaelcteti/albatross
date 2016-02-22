class AddShotsTable < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.references :club, null: false, index: true
      t.integer :yards, null: false
      t.string :lie, null: false
      t.integer :number, null: false
      t.references :hole, null: false, index: true
      t.timestamps
    end
  end
end
