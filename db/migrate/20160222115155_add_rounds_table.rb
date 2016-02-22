class AddRoundsTable < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.datetime :date
      t.string :weather
      t.string :wind
      t.string :temp
      t.string :handicap_valid
      t.references :tee, null: false, index: true
      t.timestamps
    end
  end
end
