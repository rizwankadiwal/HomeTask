# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Task.destroy_all
puts "Deleted all previous Task & Comment data"

18.times do
  new_task = Task.create(task_name: Faker::Hacker.say_something_smart,
                         user_name: Faker::Internet.user_name)
  new_task.save
  10.times do
    new_comment = new_task.comments.create(content: Faker::Hacker.say_something_smart)
    new_comment.save
  end
end

puts "Seed Script Generated #{Task.count} tasks."
puts "Seed Script Generated #{Comment.count} comments."