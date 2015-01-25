# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#['employee', 'client', 'admin', 'banned'].each do |role|
#  Role.find_or_create_by({name: role})
#end

g_detector = GenderDetector.new
50.times do |i|

	#creates some coherence between name, gender and photo for each user
	name = Faker::Name.first_name
	gender = g_detector.get_gender(name)
	gen = true
	if gender == :female
		gen = false
		g_text = "women"
	else
		g_text = "men"
	end

	img = "http://loremflickr.com/480/480/#{g_text}"
	puts img

	user = User.create(email: Faker::Internet.email,
											name: name,
											cc: Faker::Number.number(9),
											cell_phone: Faker::Number.number(9),
											phone: Faker::Number.number(9),
											birth_date: Faker::Date.between(Date.new(1990,1,1), 
																											Date.new(200,12,31)),
											photo:img,
											nationality: Faker::Address.country,
											gender:  gen,
											# a password e identica para podermos entrar em qualquer conta
											password: "12345678" 
											)

end
