class AddCoursesTable < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :full_name
      t.string :short_name
      t.timestamps
    end
  end
end
