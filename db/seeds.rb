
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database"
Reptile.destroy_all
User.destroy_all

require 'open-uri'

puts "Creating Reptiles and users"


  user1 = User.create!(
    email: "tom@gmail.com",
    username: "Tommy",
    password: "123456"
    )
  user2 = User.create!(
    email: "fara@gmail.com",
    username: "fara",
    password: "123456"
    )
  user3 = User.create!(
    email: "mike@gmail.com",
    username: "mike",
    password: "123456"
    )
  user4 = User.create!(
    email: "georgia@gmail.com",
    username: "georgia",
    password: "123456"
    )
  user5 = User.create!(
      email: "nnamdi@gmail.com",
      username: "nnamdi",
      password: "123456"
      )
  user6 = User.create!(
    email: "matt@gmail.com",
    username: "matt",
    password: "123456"
    )
  user7 = User.create!(
    email: "paul@gmail.com",
    username: "paul",
    password: "123456"
    )



   harry = Reptile.create!(
    name: "Harry",
    description: "The sand lizard (Lacerta agilis) is a lacertid lizard distributed across most of Europe from France and across the continent to Lake Baikal in Russia.[2][3] It does not occur in European Turkey. Its distribution is often patchy.[4] In the sand lizard's northern populations, such as in Great Britain, it is only able to survive along coastal heathlands where the sand is hot enough to incubate their eggs.",
    species: "Sand lizard",

    daily_price: rand(850..4060),
    user: user1
  )
    file_1 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677684208/colin-watts-jpwz6dBhy-U-unsplash_a0elgf.jpg")
    harry.photo.attach(io: file_1, filename:"harry.jpg", content_type: "image/jpg")

   john = Reptile.create!(
    name: "John",
    description: "Turtles are an order of reptiles known as Testudines, characterized by a special shell developed mainly from their ribs. Modern turtles are divided into two major groups, the Pleurodira (side necked turtles) and Cryptodira (hidden necked turtles), which differ in the way the head retracts. There are 360 living and recently extinct species of turtles, including land-dwelling tortoises and freshwater terrapins. They are found on most continents, some islands and, in the case of sea turtles, much of the ocean.",
    species: "Turtles",
    daily_price: rand(850..4060),
    user: user2
  )

  file_2 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677754407/tortoise_hrexbo.jpg")
  john.photo.attach(io: file_2, filename:"harry.jpg", content_type: "image/jpg")

   greg = Reptile.create!(
    name: "Greg",
    description: "Snakes are elongated, limbless, carnivorous reptiles of the suborder Serpentes /sɜːrˈpɛntiːz/.[2] Like all other squamates, snakes are ectothermic, amniote vertebrates covered in overlapping scales. Many species of snakes have skulls with several more joints than their lizard ancestors, enabling them to swallow prey much larger than their heads (cranial kinesis). To accommodate their narrow bodies, snakes' paired organs (such as kidneys) appear one in front of the other instead of side by side, and most have only one functional lung. Some species retain a pelvic girdle with a pair of vestigial claws on either side of the cloaca.",
    species: "Snake",
    daily_price: rand(850..4060),
    user: user3
  )
  file_3 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677761616/snake_oyg7rq.webp")
  greg.photo.attach(io: file_3, filename:"harry.jpg", content_type: "image/jpg")

   mark = Reptile.create!(
    name: "Mark",
    description: "Iguana is a genus of herbivorous lizards that are native to tropical areas of Mexico, Central America, South America, and the Caribbean. The genus was first described in 1768 by Austrian naturalist Josephus Nicolaus Laurenti in his book Specimen Medicum, Exhibens Synopsin Reptilium Emendatam cum Experimentis circa Venena. Two species are placed in the genus, the green iguana, which is widespread throughout its range and a popular pet, and the Lesser Antillean iguana, which is native to the Lesser Antilles. Genetic analysis indicates that the green iguana may comprise a complex of multiple species, some of which have been recently described, but the Reptile Database considers all of these as subspecies of the green iguana.",
    species: "Iguana",
    daily_price: rand(850..4060),
    user: user4
  )

  file_4 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677768492/iguana_yfqgbc.jpg")
  mark.photo.attach(io: file_4, filename:"harry.jpg", content_type: "image/jpg")

   luke = Reptile.create!(
    name: "Luke",
    description: "Crocodiles (family Crocodylidae) or true crocodiles are large semiaquatic reptiles that live throughout the tropics in Africa, Asia, the Americas and Australia. The term crocodile is sometimes used even more loosely to include all extant members of the order Crocodilia, which includes the alligators and caimans (family Alligatoridae), the gharial and false gharial (family Gavialidae) among other extinct taxa.",
    species: "Crocodile",
    daily_price: rand(850..40600),
    user: user5
  )
  file_5 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677769354/shelly-collins-YppMBEPyfFQ-unsplash_x1z9i0.jpg")
  luke.photo.attach(io: file_5, filename:"harry.jpg", content_type: "image/jpg")




  puts "reptiles created"



  # t.string "email", default: "", null: false
  # t.string "encrypted_password", default: "", null: false
  # t.string "reset_password_token"
  # t.datetime "reset_password_sent_at"
  # t.datetime "remember_created_at"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.string "username"
  # t.index ["email"], name: "index_users_on_email", unique: true
  # t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  # Faker::Name.name

# 20.times do
#   Reptile.create
#    name:Faker::Name.name,
#    description:Faker::Lorem.characters(number: 600, min_alpha: 100, max_alpha: 600),
#    species: Faker::Creature::Animal.name,
#    daily_price: rand(8..40),

# end



  #  belongs_to :user
  # validates :name, presence: true
  # validates :description, presence: true, length: { minimum: 100, maximum: 500 }
  # validates :species, presence: true, length: { minimum: 1, maximum: 100 }
  # validates :daily_price, presence: true, numericality: true








# t.string :name
# t.text :description
# t.string :species
# t.integer :daily_price
# t.references :user, null: false, foreign_key: true
