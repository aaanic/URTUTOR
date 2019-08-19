# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Tutorial.destroy_all

puts "Adding seed data"

tutorial_attributes = [
  { title:          "Learn to knit",
    description:    "Knitting is super important.",
    category:       "arts & crafts",
    video_link:     "https://www.youtube.com/watch?v=Tff3ng-djtk"
},
  { title:          "Blowing bubbles with chewing gum",
    description:    "Be super annoying in meetings.",
    category:       "random",
    video_link:     "https://www.youtube.com/watch?v=H0eqzzcvisw"
},
  { title:          "Make-up like Valentina",
    description:    "Want to look like Valetina for one night? Here's how!",
    category:       "make-up",
    video_link:     "https://www.youtube.com/watch?v=S-xcjHS3wec"
},
  { title:          "How to roll sushi",
    description:    "Like a real sushi master, you'll create sushi for your guests.",
    category:       "cooking",
    video_link:     "https://www.youtube.com/watch?v=yGG01tj9wi4"
}]

Tutorial.create!(tutorial_attributes)

puts "Added seed data"
