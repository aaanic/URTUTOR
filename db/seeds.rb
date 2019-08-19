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
    user_id:        1,
    description:    "Knitting is super important.",
    category:       "arts & crafts",
    image_link:     "https://i.ytimg.com/vi/4XXky5Mo5p8/maxresdefault.jpg",
    video_link:     "https://www.youtube.com/watch?v=Tff3ng-djtk"
},
  { title:          "Blowing bubbles with chewing gum",
    user_id:        1,
    description:    "Be super annoying in meetings.",
    category:       "random",
    video_link:     "https://www.youtube.com/watch?v=H0eqzzcvisw",
    image_link:     "https://www.zwembadbranche.nl/wp-content/uploads/2018/01/kauwgom.png"
},
  { title:          "Make-up like Valentina",
    user_id:        1,
    description:    "Want to look like Valetina for one night? Here's how!",
    category:       "make-up",
    video_link:     "https://www.youtube.com/watch?v=S-xcjHS3wec",
    image_link:     "https://www.sbs.com.au/topics/sites/sbs.com.au.topics/files/styles/full/public/gettyimages-1079392704.jpg?itok=xLW9wuPX&mtime=1547505637"
},
  { title:          "How to roll sushi",
    user_id:        1,
    description:    "Like a real sushi master, you'll create sushi for your guests.",
    category:       "cooking",
    video_link:     "https://www.youtube.com/watch?v=yGG01tj9wi4",
    image_link:     "https://i.pinimg.com/originals/c7/92/db/c792db3788e4ed7cd14355ccbc4cb469.jpg"
}]

Tutorial.create!(tutorial_attributes)

puts "Added seed data"
