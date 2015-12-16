# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create!(name: 'Cannon', company: 'fts', phone: '12335', email: 'cannonmoyer@ftstoo.com', billing_address: 'add', shipping_address: 'ship', taxable: true, tax_location: 'somewhere')