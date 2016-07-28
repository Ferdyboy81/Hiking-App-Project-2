# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Trail.destroy_all
User.destroy_all

trails = Trail.create([
  { name: "Runyon Canyon Trail",
    location: "Hollywood Boulevard, CA",
    level: "moderate",
    distance: "2.5 miles"},
  { name: "Mount Hollywood Trail",
    location: "Los Angeles, CA",
    level: "moderate",
    distance: "1.2 miles"},
  { name: "Griffith Park Hollywood Sign Trail",
    location: "Griffith Park, Los Angeles, CA",
    level: "easy",
    distance: "8.7 miles"},
  { name: "Cahuenga Peak Loop",
    location: "Griffith Park, Los Angeles, CA",
    level: "moderate",
    distance: "3.7 miles"},
  { name: "Bronson Caves",
    location: "Griffith Park, Los Angeles, CA",
    level: "easy",
    distance: "0.6 miles"},
  { name: "Old Zoo Trail",
    location: "Griffith Park, Los Angeles, CA",
    level: "moderate",
    distance: "7.1 miles"},
  { name: "Kenneth Hahn Recreation Area",
    location: "Los Angeles, CA",
    level: "easy",
    distance: "2.8 miles"},
  { name: "Inspiration Point Trail",
    location: "Los Angeles, CA",
    level: "easy",
    distance: "2.1 miles"},
  { name: "San Vincente Mountain: Old Nike Missile Site Trail",
    location: "Los Angeles, CA",
    distance: "10.0 miles"},
  { name: "Veterans Park Trail",
    location: "Veterans Memorial Park, Los Angeles, CA",
    level: "hard",
    distance: "2.2 miles"},
  { name: "Oak Pass And Los Pinetos Trails",
    location: "Placerita Canyon State Park, Newhall, CA",
    level: "moderate",
    distance: "7.0 miles"},
  { name: "Wilson Canyon Trail",
    location: "Wilson Park, Sylmar, CA",
    level: "hard",
    distance: "2.8 miles"},
  { name: "Heritage Trailand Botany Loop Trail",
    location: "Placerita Canyon State Park",
    level: "easy",
    distance: "4.8 miles"},
  { name: "O'Melveny Bee Canyon Trail",
    location: "O Melveny Park, Granada Hills, CA", level: "moderate",
    distance: "4.0 miles"},
  { name: "Mission Point",
    location: "O Melveny Park, Los Angeles, CA",
    level: "moderate",
    distance: "4.4 miles"},
  { name: "Bunker Hill Steps",
    location: "Los Angeles, CA",
    level: "easy",
    distance: "0.1 miles"},
  { name: "Lake Balboa Park",
    location: "Lake Balboa Park, Los Angeles, CA", level: "moderate",
    distance: "1.4 miles"},
  { name: "Inspiration Point Trail",
    location: "Will Rogers Historic State Park, Los Angeles, CA",
    level: "easy",
    distance: "2.4 miles"},
  { name: "Mandeville Canyon Trail",
    location: "Los Angeles, CA",
    level: "moderate",
    distance: "7.2 miles",
    lat: 34.129280,
    lng: -118.314716 
  }

])

user = User.create({
  firstname: "admin",
  lastname: "admin",
  username: "admin",
  email:"kaylinishime@gmail.com",
  password: "hello1234",
  password_confirmation: "hello1234"
})
