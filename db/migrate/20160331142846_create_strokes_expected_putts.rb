class CreateStrokesExpectedPutts < ActiveRecord::Migration
  def change
    create_table :strokes_expected_putts do |t|
      t.integer :distance
      t.float :strokes_expected
      t.timestamps null: false
    end
  end
end
