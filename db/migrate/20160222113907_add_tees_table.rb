class AddTeesTable < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.string :color, null: false
      t.string :rating, null: false
      t.integer :slope, null: false
      t.references :course, null: false, index: true
      t.timestamps
    end
  end
end
