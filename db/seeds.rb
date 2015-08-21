require 'faker'

#Create Todo's
10.times do 
  TodoItem.create!(
    content: Faker::Lorem.sentence
    )
end

todos = TodoItem.all

puts "Seeds finished"
puts "#{TodoItem.count} todos created"