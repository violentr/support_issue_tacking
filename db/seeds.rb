# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	%w{charles diana fred dipesh steven michael}.each do |name|
		Customer.create(name: name, email: "#{name}@mail.co.uk")
	end
	puts "Fake customers's names with emails were added !"

	%w{Sales Support Representative}.each do |department|
		Department.create(title: department)
	end
	puts "Fake departments were added !"
