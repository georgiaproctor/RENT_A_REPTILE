
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
Booking.destroy_all

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

  user8 = User.create!(
    email: "hannah@gmail.com",
    username: "hannah",
    password: "123456"
    )

  user9 = User.create!(
    email: "claire@gmail.com",
    username: "claire",
    password: "123456"
    )

  user10 = User.create!(
    email: "sophie@gmail.com",
    username: "sophie",
    password: "123456"
    )

  user11 = User.create!(
    email: "olivia@gmail.com",
    username: "olivia",
    password: "123456"
    )



   harry = Reptile.create!(
    name: "Harry",
    description: "The sand lizard (Lacerta agilis) is a lacertid lizard distributed across most of Europe from France and across the continent to Lake Baikal in Russia.[2][3] It does not occur in European Turkey. Its distribution is often patchy.[4] In the sand lizard's northern populations, such as in Great Britain, it is only able to survive along coastal heathlands where the sand is hot enough to incubate their eggs.",
    species: "Sand lizard",

    daily_price: 16.44,
    user: user1
  )
    file_1 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677684208/colin-watts-jpwz6dBhy-U-unsplash_a0elgf.jpg")
    harry.photo.attach(io: file_1, filename:"harry.jpg", content_type: "image/jpg")

   john = Reptile.create!(
    name: "John",
    description: "Turtles are an order of reptiles known as Testudines, characterized by a special shell developed mainly from their ribs. Modern turtles are divided into two major groups, the Pleurodira (side necked turtles) and Cryptodira (hidden necked turtles), which differ in the way the head retracts. There are 360 living and recently extinct species of turtles, including land-dwelling tortoises and freshwater terrapins. They are found on most continents, some islands and, in the case of sea turtles, much of the ocean.",
    species: "Turtle",
    daily_price: 14.34,
    user: user2
  )

  file_2 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677754407/tortoise_hrexbo.jpg")
  john.photo.attach(io: file_2, filename:"harry.jpg", content_type: "image/jpg")

   greg = Reptile.create!(
    name: "Greg",
    description: "Snakes are elongated, limbless, carnivorous reptiles of the suborder Serpentes /sɜːrˈpɛntiːz/.[2] Like all other squamates, snakes are ectothermic, amniote vertebrates covered in overlapping scales. Many species of snakes have skulls with several more joints than their lizard ancestors, enabling them to swallow prey much larger than their heads (cranial kinesis). To accommodate their narrow bodies, snakes' paired organs (such as kidneys) appear one in front of the other instead of side by side, and most have only one functional lung. Some species retain a pelvic girdle with a pair of vestigial claws on either side of the cloaca.",
    species: "Snake",
    daily_price: 10.23,
    user: user3
  )
  file_3 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677761616/snake_oyg7rq.webp")
  greg.photo.attach(io: file_3, filename:"harry.jpg", content_type: "image/jpg")

   mark = Reptile.create!(
    name: "Mark",
    description: "Iguana is a genus of herbivorous lizards that are native to tropical areas of Mexico, Central America, South America, and the Caribbean. The genus was first described in 1768 by Austrian naturalist Josephus Nicolaus Laurenti in his book Specimen Medicum, Exhibens Synopsin Reptilium Emendatam cum Experimentis circa Venena. Two species are placed in the genus, the green iguana, which is widespread throughout its range and a popular pet, and the Lesser Antillean iguana, which is native to the Lesser Antilles. Genetic analysis indicates that the green iguana may comprise a complex of multiple species, some of which have been recently described, but the Reptile Database considers all of these as subspecies of the green iguana.",
    species: "Iguana",
    daily_price: 12.99,
    user: user4
  )

  file_4 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677768492/iguana_yfqgbc.jpg")
  mark.photo.attach(io: file_4, filename:"harry.jpg", content_type: "image/jpg")

   luke = Reptile.create!(
    name: "Luke",
    description: "Crocodiles (family Crocodylidae) or true crocodiles are large semiaquatic reptiles that live throughout the tropics in Africa, Asia, the Americas and Australia. The term crocodile is sometimes used even more loosely to include all extant members of the order Crocodilia, which includes the alligators and caimans (family Alligatoridae), the gharial and false gharial (family Gavialidae) among other extinct taxa.",
    species: "Crocodile",
    daily_price: 11.89,
    user: user5
  )
  file_5 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677838839/development/u32cwbbr9bxubbb87rm2z8qm3dg6.jpg")
  luke.photo.attach(io: file_5, filename:"harry.jpg", content_type: "image/jpg")

  henry = Reptile.create!(
    name: "Henry",
    description: "The crested gecko or eyelash gecko (Correlophus ciliatus) is a species of gecko native to southern New Caledonia. In 1866, the crested gecko was described by French zoologist Alphonse Guichenot.[1][2] This species was thought to be extinct until it was rediscovered in 1994 during an expedition led by Robert Seipp.[3][4] Along with several other New Caledonian gecko species, it is being considered for protected status by the Convention on the International Trade in Endangered Species of Wild Flora and Fauna.

    ",
    species: "Crested gecko",
    daily_price: 21.00,
    user: user6
  )
  file_6 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677779850/licensed-image_rlnn1y.jpg")
  henry.photo.attach(io: file_6, filename:"harry.jpg", content_type: "image/jpg")

  leo = Reptile.create!(
    name: "Leo",
    description: "The Komodo dragon (Varanus komodoensis), also known as the Komodo monitor, is a member of the monitor lizard family Varanidae that is endemic to the Indonesian islands of Komodo, Rinca, Flores, and Gili Motang. It is the largest extant species of lizard, growing to a maximum length of 3 m (9.8 ft), and weighing up to 70 kg (150 lb).

    As a result of their size, Komodo dragons are apex predators, and dominate the ecosystems in which they live. Komodo dragons hunt and ambush prey including invertebrates, birds, and mammals. It has been claimed that they have a venomous bite; there are two glands in the lower jaw that secrete several toxic proteins. The biological significance of these proteins is disputed, but the glands have been shown to secrete an anticoagulant. Komodo dragons' group behavior in hunting is exceptional in the reptile world. The diet of Komodo dragons mainly consists of Javan rusa (Rusa timorensis), though they also eat considerable amounts of carrion. Komodo dragons also occasionally attack humans.",
    species: "Komodo Dragon",
    daily_price: 9.00,
    user: user7
  )
  file_7 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677779914/development/surnm39eav68y6lxn4sjzlvmdmin.webp")
  leo.photo.attach(io: file_7, filename:"harry.jpg", content_type: "image/jpg")


  delilah = Reptile.create!(
    name: "Delilah",
    description: "Chameleons or chamaeleons (family Chamaeleonidae) are a distinctive and highly specialized clade of Old World lizards with 200 species described as of June 2015.[1] The members of this family are best known for their distinct range of colors, being capable of shifting to different hues and degrees of brightness. The large number of species in the family exhibit considerable variability in their capacity to change color. For some, it is more of a shift of brightness (shades of brown); for others, a plethora of color-combinations (reds, yellows, greens, blues) can be seen.",
    species: "Chameleon",
    daily_price: 19.08,
    user: user8
  )
  file_8 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677839926/balogun-wareez-ZAqDui0HXRU-unsplash_su6fpr.jpg")
  delilah.photo.attach(io: file_8, filename:"harry.jpg", content_type: "image/jpg")

  cleo = Reptile.create!(
    name: "Cleo",
    description: "Anolis carolinensis or green anole (US: /əˈnoʊ.li/ (listen)) (among other names below) is a tree-dwelling species of anole lizard native to the southeastern United States and introduced to islands in the Pacific and Caribbean. A small to medium-sized lizard, the green anole is a trunk-crown ecomorph and can change its color to several shades from brown to green.

    Other names include the Carolina anole, Carolina green anole, American anole, American green anole, North American green anole and red-throated anole. It is commonly called chameleon in the southeastern United States and sometimes referred to as the American chameleon (typically in the pet trade) due to its color-changing ability; however, it is not a true chameleon.",
    species: "Green Anole",
    daily_price: 11.69,
    user: user9
  )
  file_9 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677840292/3818630739_60c3697540_o_anerbb.webp")
  cleo.photo.attach(io: file_9, filename:"harry.jpg", content_type: "image/jpg")

  daphne = Reptile.create!(
    name: "Daphne",
    description: "The armadillo girdled lizard (Ouroborus cataphractus),[2] also commonly known as the armadillo lizard, the armadillo spiny-tailed lizard, and the golden-armadillo lizard, is a species of lizard in the family Cordylidae. The species is endemic to desert areas along the western coast of South Africa.[3] In 2011, it was moved to its own genus based on molecular phylogeny, but formerly it was included in the genus Cordylus.[2][4]",
    species: "Armadillo Girdled Lizard",
    daily_price: 16.00,
    user: user10
  )
  file_10 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677840718/armadillo-lizard-biting-its-tail_lf0i1o.jpg")
  daphne.photo.attach(io: file_10, filename:"harry.jpg", content_type: "image/jpg")

  otis = Reptile.create!(
    name: "Otis",
    description: "The green sea turtle (Chelonia mydas), also known as the green turtle, black (sea) turtle or Pacific green turtle,[4] is a species of large sea turtle of the family Cheloniidae. It is the only species in the genus Chelonia.[5] Its range extends throughout tropical and subtropical seas around the world, with two distinct populations in the Atlantic and Pacific Oceans, but it is also found in the Indian Ocean.[6][7] The common name refers to the usually green fat found beneath its carapace, not to the color of its carapace, which is olive to black.

    The dorsoventrally flattened body of C. mydas is covered by a large, teardrop-shaped carapace; it has a pair of large, paddle-like flippers. It is usually lightly colored, although in the eastern Pacific populations, parts of the carapace can be almost black. Unlike other members of its family, such as the hawksbill sea turtle, C. mydas is mostly herbivorous. The adults usually inhabit shallow lagoons, feeding mostly on various species of seagrasses.[8] The turtles bite off the tips of the blades of seagrass, which keeps the grass healthy.",
    species: "Green sea turtle",
    daily_price: 8.99,
    user: user11
  )
  file_11 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1677841101/gettyimages-1145422609_ywzfzv.webp")
  otis.photo.attach(io: file_11, filename:"harry.jpg", content_type: "image/jpg")

  booking1 = Booking.create(
    start_date: "2020-01-01",
    end_date: "2020-02-05",
      user: user2,
      reptile: john


  )

  booking2 = Booking.create(
    start_date: "2022-01-01",
    end_date: "2023-02-05",
      user: user2,
      reptile: harry

  )

  booking3 = Booking.create(
    start_date: "2000-07-01",
    end_date: "2004-05-08",
      user: user2,
      reptile: greg

  )

  booking4 = Booking.create(
    start_date: "2010-09-01",
    end_date: "2011-05-08",
      user: user2,
      reptile: mark

  )

  booking5 = Booking.create(
    start_date: "2015-09-01",
    end_date: "2016-05-08",
      user: user2,
      reptile: luke
  )

  puts "reptiles created"

