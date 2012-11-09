# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Startup.destroy_all

Startup.create([
  { name: 'Better Fit Technologies',
    pitch: 'BetterFit Technologies is committed to facilitating data-driven healthcare decisions for patients and providers.',
    email: 'chouichoui@me.com',
    pitch_time: Time.new(2012, 11, 7, 13, 30),

    ceo_name: 'Julia Winn',
    ceo_email: 'julia@betterfit.com',
    ceo_avatar_path: '/assets/betterfit.png',
  },
  { name: 'Ovuline',
    pitch: 'ImpulseSave makes saving money just as impulsive and instantly gratifying as spending it.',
    email: 'chouichoui@me.com',
    pitch_time: Time.new(2012, 11, 7, 14, 0),

    ceo_name: 'Phil Fremont-Smith',
    ceo_email: 'phil@impulsesave.com',
    ceo_avatar_path: '/assets/ovuline.png',
  }
])
