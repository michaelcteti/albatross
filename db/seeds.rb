# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Strokes Expected Putts
# Calculation after base ones: y = 0.3916*Math.log(x) + 0.6486

StrokesExpectedPutt.create(distance: 1, strokes_expected: 1.00)
StrokesExpectedPutt.create(distance: 2, strokes_expected: 1.00)
distances = (3..75).to_a
distances.map do |dist|
  StrokesExpectedPutt.create(
    distance: dist,
    strokes_expected: ((0.3916*Math.log(dist)) + 0.6486).round(2)
  )
end

# Strokes Expected Shots
# Calculate each section in between....probably just average