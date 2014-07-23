# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Staring Generation of Seed Data"

users = User.create([{
    first_name: "Tenji",
    last_name: "Tembo",
    email: 'tenji240@gmail.com',
    address: '8202 Coneflower Way',
    city: 'Gaithersburg',
    state: 'Maryland',
    zip: '20877',
    career_statement: 'I am ready to WIN'
  },
  {
    first_name: "Frank",
    last_name: "West",
    email: 'fwest990@bugle.com',
    address: '4201 Zombie Boulevard',
    city: 'Rockville',
    state: 'Maryland',
    zip: '21250',
    career_statement: 'Zombie Hunter and Reporter for Hire'
  },
  {
    first_name: "Vergil",
    last_name: "Sparda",
    email: 'vergil_power0@dmc.com',
    address: '1 Inhibitor Alley',
    city: 'Damascus',
    state: 'Maryland',
    zip: '21255',
    career_statement: 'I need more Power...'
  },
  {
    first_name: "Chun",
    last_name: "Li",
    email: 'agent_li@interpol.com',
    address: '166 Justice Circle',
    city: 'Washington',
    state: 'DC',
    zip: '21200',
    career_statement: 'Serving Justice with a Kick!'
  }])

puts "User Data is Complete"

companies = Company.create({
     name: 'Waterloo',
     address: '10 Main Street',
     city: 'AnyTown',
     state: 'Kanas',
     zip: '40010'
  })

puts "Created Base Company"

postings = Posting.create({
    company_id: Company.first,
    description: 'This is my job profile. We are a baller company. We need some Ruby on Rails Developers to Fix our Stuff',
    experience: 'BS/MS Degree or 2 Years Full Stack',
    postition: 'Full Time'
  })

puts "created Base Posting"

puts "Generation of Seed Data is Complete"
