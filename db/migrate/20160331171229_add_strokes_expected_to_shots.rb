class AddStrokesExpectedToShots < ActiveRecord::Migration
  def change
    add_column :shots, :strokes_expected, :float
  end
end
