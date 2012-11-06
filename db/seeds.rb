# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Startup.destroy_all
Founder.destroy_all

Startup.create([
  { name: 'Better Fit Technologies', founders: [
    Founder.new({ name: 'Julia Winn' }),
    Founder.new({ name: 'Benjamin "Zags" Zagorsky'})
  ]},
  { name: 'ImpulseSave', founders: [
    Founder.new({ name: 'Phil Fremont-Smith' }),
    Founder.new({ name: 'John Mileham' }),
    Founder.new({ name: 'Anne Steinhaus' }),
  ]}
])
