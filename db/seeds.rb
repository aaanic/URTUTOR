# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
User.destroy_all
Category.destroy_all
Tutorial.destroy_all
Lesson.destroy_all
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



categories_stuff = [
{
  name:       "DIY",
},
{
  name:       "Random",
},
{
  name:       "Make-Up",
},
{
  name:       "Tech",
},
{
  name:       "Sewing",
},
{
  name:       "Dancing",
},
{
  name:       "Singing",
},
{
  name:       "Plants",
},
{
  name:       "Cooking",
}
]
Category.create!(categories_stuff)
print " and #{Category.count} categories"


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
    image_link:     "https://i.pinimg.com/originals/4e/0b/9d/4e0b9d9d65b7ec0f9120be61d205b782.jpg"
},
  { title:          "Hack Google",
    user_id:        1,
    description:    "Some weekends are for visiting family, some weekends are for relaxing but there always needs to be one weekened where you learn to hack google. VPN not included.",
    category_id:    4,
    video_link:     "https://www.youtube.com/watch?v=yGG01tj9wi4",
    image_link:     "https://source.unsplash.com/iar-afB0QQw"
},
  { title:          "Sew On A Button",
    user_id:        3,
    description:    "If you have ever owned a button-up shirt you will have at one stage lost a button.  We are here to teach you how to sew that badboy back on your shirt.",
    category_id:    5,
    video_link:     "https://www.youtube.com/watch?v=zca_gc-Qw7w",
    image_link:     "https://source.unsplash.com/xFcqV_XZNNU"
},
  { title:          "Train Your Dragon",
    user_id:        2,
    description:    "Have you just finished season 6 of 'Game Of Thrones' and have recently found a dragon that was looking for a new leader.",
    category_id:    2,
    video_link:     "https://www.youtube.com/watch?v=SkcucKDrbOI",
    image_link:     "https://imgix.bustle.com/uploads/image/2019/4/18/c2b5ada0-0925-4f15-822b-b414ed79e605-2de0908eaeb8a27478391f59fa8bd90479aba9a197a808b83ef8b866e067c682320b964566e31ff7378a22a84ca579af.jpg?w=960&h=540&fit=crop&crop=faces&auto=format&q=70&dpr=2"
},
  { title:          "Smokey Eyes",
    user_id:        3,
    description:    "Simply apply the shadow all over the lid, blending it over and over towards the outer corner for the smokey effect. Then apply the gel eyeliner along the bottom lid and lash line, smudging it with a small eye brush.",
    category_id:    3,
    video_link:     "https://www.youtube.com/watch?v=Yb4w3wlohm4",
    image_link:     "https://source.unsplash.com/fMjlJuRSosI"
},
  { title:          "Your urban jungle",
    user_id:        3,
    description:    " A friend of mine inspired me to make this video so I can help him out and others like you out there who want to bring house plants into their lives but you're just not sure which plants to start with.",
    category_id:    8,
    video_link:     "https://www.youtube.com/watch?v=FaAU_Hxg6tU",
    image_link:     "https://source.unsplash.com/m5dVK7tKOwE"
},
  { title:          "JavaScript Animations",
    user_id:        1,
    description:    "Today we are going to use Javascript to add some animations to our html forms. You can use this to create simple html login forms or registration forms. Including animation for form validation using html and javascript.",
    category_id:    4,
    video_link:     "https://www.youtube.com/watch?v=wc5k2AMPED0",
    image_link:     "https://source.unsplash.com/KE0nC8-58MQ"
},
  { title:          "Dance like a Star",
    user_id:        2,
    description:    "Learn this beginner dancehall routine from the creators of Dancehall Funk, Lorenzo & Dionne! This TUTORIAL will teach you how to do combine all the dancehall moves you've learned into one routine step-by-step.",
    category_id:    6,
    video_link:     "https://www.youtube.com/watch?v=7_BYl0U9zns",
    image_link:     "https://mixmag.net/assets/uploads/images/_fullX2/SONT9928.jpg"
},
  { title:          "Latte Art",
    user_id:        1,
    description:    "How to make the perfect cappuccino. Definitely better than Star Bucks!",
    category_id:    9,
    video_link:     "https://www.youtube.com/watch?v=B1yJuGQOUaY",
    image_link:     "https://source.unsplash.com/z3em1GBRhvY"
},
  { title:          "The perfect macron",
    user_id:        2,
    description:    "How to make the perfect cappuccino. Definitely better than Star Bucks!",
    category_id:    9,
    video_link:     "https://www.youtube.com/watch?v=MjVgIXccYXA",
    image_link:     "https://source.unsplash.com/l9Ugo0XcGWw"
},
  { title:          "You're herb garden",
    user_id:        3,
    description:    " Today I'm showing you a super easy DIY Herb Garden that hangs on a rail! It's a great DIY project if you're trying to decorate your patio or outdoor living space.",
    category_id:    8,
    video_link:     "https://www.youtube.com/watch?v=Ict29d8GeXE",
    image_link:     "https://source.unsplash.com/6hDDnisCRMk"
}]

Tutorial.create!(tutorial_attributes)
print " and #{Tutorial.count} tutorials"

Tutorial.all.each do |t|
  t.video_id = t.video_link.split("=")[1]
  t.save
end


puts ""
puts "Have a wonderful time! Good Luck!"
puts ""
