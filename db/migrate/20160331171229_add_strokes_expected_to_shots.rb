class AddStrokesExpectedToShots < ActiveRecord::Migration
  def change
    add_column :shots, :strokes_expected, :float
    add_column :shots, :shot_type, :string
  end
end
