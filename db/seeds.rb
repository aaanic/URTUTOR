# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
User.destroy_all
users_stuff = [
{
  username:       "emmagreen",
  first_name:     "emma",
  last_name:      "green",
  email:          "emma@green.com",
  password:       "iamgreen"
},
{
  username:       "emmablack",
  first_name:     "emma",
  last_name:      "black",
  email:          "emma@black.com",
  password:       "iamblack"
},
{
  username:       "emmapurple",
  first_name:     "emma",
  last_name:      "purple",
  email:          "emma@purple.com",
  password:       "iampurple"
},
]
User.create!(users_stuff)
print "added #{User.count} users"



Category.destroy_all
categories_stuff = [
{
  name:       "DIY",
},
{
  name:       "Bubbles",
},
{
  name:       "Make-Up",
},
{
  name:       "Hacking",
},
{
  name:       "Sewing",
},
{
  name:       "Dragons",
}
]
Category.create!(categories_stuff)
print " and #{Category.count} categories"

Tutorial.destroy_all

tutorial_attributes = [
  { title:          "Living Off Grid",
    user_id:        1,
    description:    "Living free and self-sufficient.  No electrical bills and a greener way of life for the family.",
    category_id:    1,
    image_link:     "https://i.ytimg.com/vi/I9jRYHpeAk0/maxresdefault.jpg",
    video_link:     "https://www.youtube.com/watch?v=I9jRYHpeAk0"
},
  { title:          "Blowing The Biggest Bubbles",
    user_id:        1,
    description:    "Impress your family, friends and the whole neighbourhood.  Blow insane bubbles that will definetly make you the most popular person in town.",
    category_id:    2,
    video_link:     "https://www.youtube.com/watch?v=98pa2pxhoGk",
    image_link:     "http://www.waynesthisandthat.com/images/gbheader.jpg"
},
  { title:          "Make-Up Like Valentina",
    user_id:        1,
    description:    "Want to look like Valetina for one night? Here's how!",
    category_id:    3,
    video_link:     "https://www.youtube.com/watch?v=cqpXL78yRqc",
    image_link:     "https://i.ytimg.com/vi/SZLq7rldTtk/maxresdefault.jpg"
},
  { title:          "Hack Google",
    user_id:        1,
    description:    "Some weekends are for visiting family, some weekends are for relaxing but there always needs to be one weekened where you learn to hack google. VPN not included.",
    category_id:    4,
    video_link:     "https://www.youtube.com/watch?v=yGG01tj9wi4",
    image_link:     "https://1.bp.blogspot.com/-pCx12skpKwg/Vu0Ih209eGI/AAAAAAAABTM/amX4hbK5PEcOriRdT855KjiENovxZGm8g/s728-e100/hacking-google-chromebook.png"
},
  { title:          "Sew On A Button",
    user_id:        3,
    description:    "If you have ever owned a button-up shirt you will have at one stage lost a button.  We are here to teach you how to sew that badboy back on your shirt.",
    category_id:    5,
    video_link:     "https://www.youtube.com/watch?v=zca_gc-Qw7w",
    image_link:     "https://i1.wp.com/blog.treasurie.com/wp-content/uploads/2017/05/how-to-sew-a-button-1.jpg?resize=1024%2C683&ssl=1"
},
  { title:          "Train Your Dragon",
    user_id:        3,
    description:    "Have you just finished season 6 of 'Game Of Thrones' and have recently found a dragon that was looking for a new leader.",
    category_id:    6,
    video_link:     "https://www.youtube.com/watch?v=SkcucKDrbOI",
    image_link:     "https://imgix.bustle.com/uploads/image/2019/4/18/c2b5ada0-0925-4f15-822b-b414ed79e605-2de0908eaeb8a27478391f59fa8bd90479aba9a197a808b83ef8b866e067c682320b964566e31ff7378a22a84ca579af.jpg?w=960&h=540&fit=crop&crop=faces&auto=format&q=70&dpr=2"
}]

Tutorial.create!(tutorial_attributes)
print " and #{Tutorial.count} tutorials"

puts ""
puts "Have a wonderful time! Good Luck!"
puts ""
