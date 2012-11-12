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
    pitch: 'Better individual care, personalized medicine for everyone.',
    email: 'julia@betterfit.com',
    pitch_time: Time.utc(2012, 11, 14, 16, 0),
    angellist_id: 79995,

    ceo_name: 'Julia Winn',
    ceo_email: 'julia@betterfit.com',
    ceo_avatar_path: '/assets/betterfit.png',
  },
  { name: 'Ovuline',
    pitch: 'We make babies',
    email: 'chouichoui@me.com',
    pitch_time: Time.utc(2012, 11, 14, 17, 0),

    ceo_name: 'Paris Wallace',
    ceo_email: 'paris@ovuline.com',
    ceo_avatar_path: '/assets/ovuline.png',
  },
  { name: 'Fetchnotes',
    pitch: 'Productivity, as simple as a tweet.',
    email: 'alex@fetchnotes.com',
    pitch_time: Time.utc(2012, 11, 14, 18, 0),
    angellist_id: 79995,
    
    ceo_name: 'Alex Schiff',
    ceo_email: 'alex@fetchnotes.com',
    ceo_avatar_path: '/assets/fetchnotes.png',
  },
  { name: 'Impulsave',
    pitch: 'ImpulseSave has made saving & investing our money as easy & instantly gratifying as spending it. Users already saving $3k a yr and we\'re just getting started.',
    email: 'founders@impulsesave.com',
    pitch_time: Time.utc(2012, 11, 14, 19, 0),
    angellist_id: 79995,
    
    ceo_name: 'Phil Fremont Smith',
    ceo_email: 'phil@impulsesave.com',
    ceo_avatar_path: '/assets/impulsave.png',
  },
  { name: 'Dashbell',
    pitch: 'OpenTable for independent hotels.',
    email: 'founders@dashbell.com',
    pitch_time: Time.utc(2012, 11, 14, 19, 20),
    angellist_id: 79995,
    
    ceo_name: 'Paige Brown',
    ceo_email: 'paige@dashbell.com',
    ceo_avatar_path: '/assets/bookingmarkets.png',
  },
  { name: 'Careport',
    pitch: 'We find the right post-hospital care for patients.',
    email: 'founders@careporthealth.com',
    pitch_time: Time.utc(2012, 11, 14, 19, 30),
    angellist_id: 79995,
    
    ceo_name: 'Lissy Hu',
    ceo_email: 'lissy@careporthealth.com',
    ceo_avatar_path: '/assets/careport.png',
  },
   { name: 'Zeppelin',
    pitch: 'Connecting your cloud applications and team in one place',
    email: 'founders@zeppelin.co',
    pitch_time: Time.utc(2012, 11, 14, 19, 40),
    angellist_id: 79995,
    
    ceo_name: 'Davorin Gabrovec',
    ceo_email: 'davorin@zepppelin.com',
    ceo_avatar_path: '/assets/zepp.png',
  },
  { name: 'CoachUp',
    pitch: 'CoachUp helps athletes achieve their full potential by connecting them with great private coaches.',
    email: 'j@coachup.com',
    pitch_time: Time.utc(2012, 11, 14, 19, 50),
    angellist_id: 79995,
    
    ceo_name: 'Jordan Fliegel',
    ceo_email: 'J@coachup.com',
    ceo_avatar_path: '/assets/coachup.png',
  },
  { name: 'Wymsee',
    pitch: 'Wymsee is digitizing new areas of TV and Film production, revolutionizing how brands influence and measure their reach through media.',
    email: 'founders@wymsee.com',
    pitch_time: Time.utc(2012, 11, 14, 20, 0),
    angellist_id: 79995,
    
    ceo_name: 'Alex LoVerde',
    ceo_email: 'alex@wymsee.com',
    ceo_avatar_path: '/assets/wymsee.png',
  },
   { name: 'NBD Nano',
    pitch: 'NBD makes use of a nanoscale surface to enhance water capture from the atmosphere.',
    email: 'founders@nbdnano.com',
    pitch_time: Time.utc(2012, 11, 14, 20, 10),
    angellist_id: 79995,
    
    ceo_name: 'Miguel Galvez',
    ceo_email: 'miguel@nbdnano.com',
    ceo_avatar_path: '/assets/nbd.png',
  },
  { name: 'Saverr',
    pitch: 'Scan your receipt and save over $1000 per year on groceries for what really matters.',
    email: 'founders@saverrapp.com',
    pitch_time: Time.utc(2012, 11, 14, 20, 20),
    angellist_id: 79995,
    
    ceo_name: 'Eyal Yair',
    ceo_email: 'eyal@saverrapp.com',
    ceo_avatar_path: '/assets/saverr.png',
  },
  { name: 'Fashion Project',
    pitch: 'Changing the way you give.',
    email: 'none@example.com',
    pitch_time: Time.utc(2012, 11, 14, 20, 30),
    angellist_id: 79995,
    
    ceo_name: 'Anna Palmer',
    ceo_email: '',
    ceo_avatar_path: '/assets/fp.png',
  },
  { name: 'Urban Hero',
    pitch: 'Making people jump higher',
    email: 'none@example.com',
    pitch_time: Time.utc(2012, 11, 14, 20, 40),
    angellist_id: 79995,
    
    ceo_name: 'Arron Acosta',
    ceo_email: 'arron@urbanherosports.com',
    ceo_avatar_path: '/assets/urbanhero.png',
  },
])
