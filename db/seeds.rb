require 'faker'

#Create Todos
10.times do 
  TodoItem.create!(
    content: Faker::Lorem.words(4)
  )
end
 todos = TodoItem.all

puts "Seed finished"
puts "#{TodoItem.count} posts created"