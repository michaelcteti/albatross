class AddSgStatsToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :strokes_gained, :float
    add_column :rounds, :strokes_gained_driving, :float
    add_column :rounds, :strokes_gained_approach, :float
    add_column :rounds, :strokes_gained_short_game, :float
    add_column :rounds, :strokes_gained_putting, :float
  end
end
