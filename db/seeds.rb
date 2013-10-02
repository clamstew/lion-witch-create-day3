# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

WardrobeItem.create garment: 'dress',  label: 'Michael Kors',  season: 'spring', color: 'red'
WardrobeItem.create garment: 'shoes',  label: 'Steve Madden',  season: 'winter', color: 'black'
WardrobeItem.create garment: 'blouse', label: 'Eileen Fisher', season: 'spring', color: 'blue'