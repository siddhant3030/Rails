# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

moderator = Moderator.create(
	fullname: "Siddhant Singh",
	username: "ssiddhant3030@gmail.com",
	password: "example")


40.times do 
 post = Post.create(
   title: Faker::Lorem.sentence(20),
   content: Faker::Lorem.paragraph,
   publish: true,
   moderator: moderator)

 tag = Tag.create(name: Faker::Lorem.word)

 post_tag = PostTag.create(post: post, tag: tag)
end
