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

#Tee
StrokesExpectedShot.create(distance: 100, strokes_expected: 2.92, lie: 'T')
StrokesExpectedShot.create(distance: 120, strokes_expected: 2.99, lie: 'T')
StrokesExpectedShot.create(distance: 140, strokes_expected: 2.97, lie: 'T')
StrokesExpectedShot.create(distance: 160, strokes_expected: 2.99, lie: 'T')
StrokesExpectedShot.create(distance: 180, strokes_expected: 3.05, lie: 'T')
StrokesExpectedShot.create(distance: 200, strokes_expected: 3.12, lie: 'T')

#Fairway
StrokesExpectedShot.create(distance: 100, strokes_expected: 2.80, lie: 'F')

#Rough
StrokesExpectedShot.create(distance: 100, strokes_expected: 3.02, lie: 'R')

#Sand
StrokesExpectedShot.create(distance: 100, strokes_expected: 3.23, lie: 'S')

#Recovery
StrokesExpectedShot.create(distance: 100, strokes_expected: 3.80, lie: 'X')

