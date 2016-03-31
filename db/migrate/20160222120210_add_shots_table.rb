class AddShotsTable < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.references :club
      t.integer :yards
      t.string :lie
      t.integer :number, null: false
      t.references :hole, null: false, index: true
      t.boolean :penalty, null: false, default: false
      t.timestamps
    end
  end
end
