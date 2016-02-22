class AddHolesTable < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :number, null: false
      t.integer :par, null: false
      t.integer :handicap, null: false
      t.integer :yards, null: false
      t.integer :score, null: false
      t.references :round, null: false, index: true
      t.timestamps
    end
  end
end
