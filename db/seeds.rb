# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
    "Food", "Health", "Car" 
]

# 'Create Countries'

categories.each do |category|
    if Category.where(:name => category) == []
        puts "Create category #{category}!"
        category_created = Category.new(name: category)
        category_created.save!
    end
end
