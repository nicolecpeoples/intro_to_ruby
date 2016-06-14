# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(name: "Hose", description: "For Watering Things", pricing: 19.99, category_id: 3)
Product.create(name: "Toaster", description: "bread warming device", pricing: 29.99, category_id: 2)
Product.create(name: "Pillow", description: "sleep device", pricing: 9.99, category_id: 2)