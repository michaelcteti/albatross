class CreateStrokesExpectedShots < ActiveRecord::Migration
  def change
    create_table :strokes_expected_shots do |t|
      t.integer :distance
      t.float :strokes_expected
      t.string :lie
      t.timestamps null: false
    end
  end
end
