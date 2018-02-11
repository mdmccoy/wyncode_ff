# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Picture.create([{ url: 'http://www.dailyherald.com/storyimage/DA/20110724/entlife/707249979/AR/0/AR-707249979.jpg&updated=201107241250&MaxW=800&maxH=800&noborder',
                  caption: 'Sweet pic!',
                  rating: 4,
                  location: '299 NW 27th Terrace Miami Florida' },
                { url: 'https://cdn.vox-cdn.com/thumbor/LBx-fZEtigqICpLxtnJVdMe2HqE=/0x0:1496x1112/920x613/filters:focal(445x396:683x634):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/50524581/Screen_20Shot_202016-08-25_20at_201.00.22_20PM.0.png',
                  caption: 'Super sweet pic!',
                  rating: 3,
                  location: 'Wynwood Walls' }])

50.times do
  Picture.create(
    url: 'https://i.imgur.com/yGrdpxa.jpg',
    caption: 'Carly loves pink skulls.',
    rating: '5',
    location: '199 NW 25th St Miami Florida'
  )
end

200.times do
  Review.create(
    description: ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    author: %w[Matt Patrick Asger].sample,
    rating: (1..5).to_a.sample,
    picture_id: (1..50).to_a.sample
  )
end
