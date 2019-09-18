puts "Creating posts"
(1..10).each do |n|
  Post.create!(title: "#{n}-#{Faker::Lorem.sentence.upcase.capitalize}", body: Faker::Lorem.paragraph)
end

puts "Created #{Post.count} with success" if Post.any?
