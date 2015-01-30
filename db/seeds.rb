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




def generate_user
	g_detector = GenderDetector.new

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
											password: "12345678",
											description:Faker::Lorem.paragraph,
							 				bio:Faker::Lorem.paragraph(4)
											)
	return user

end

def generate_user_address(user)

	Address.create(user_id: user.id,
								 zip_code: Faker::Address.zip_code,
								 city: Faker::Address.city,
								 street: Faker::Address.street_address,
								 door_number: Faker::Address.building_number,
								 district: Faker::Address.state,
								 address:Faker::Address.street_address,
							 	lat:Faker::Address.latitude,
							 	long:Faker::Address.longitude 
								)

end


def generate_service_provider(user)

	to_srvp = [true, false].sample

	if to_srvp
		srvp = ServiceProvider.create(user_id: user.id)
		return srvp
	end
	return nil
end 

def add_service_type(srvp)

	for i in 0..4
		ServiceTypeServiceProvider.create(service_type_id:i,
										 service_provider_id: srvp.id,
										value: Faker::Commerce.price)
	end

end

def add_time_table(srvp)

	for i in 0..6
		TimeTable.create(service_provider_id: srvp.id,
						 start_time:Faker::Time.between(i.days.ago, i.days.ago, :morning), 
						end_time:Faker::Time.between(i.days.ago, i.days.ago, :afternoon) 
						)
	end
end

def generate_service_type
	ServiceType.create(description: "Engomadoria")
	ServiceType.create(description: "Limpeza geral")
	ServiceType.create(description: "Refeição")
	ServiceType.create(description: "Compras para o lar")
end







generate_service_type

users = []
maids = []

#generte users, maids, service tupes and time tables
50.times do |i|
	user = generate_user
	generate_user_address(user)
	#might set a user as a maid, and if it does then give him a schedule and
	#service types
	srvp = generate_service_provider(user)

	if srvp == nil
		users << user
	else
		maids << srvp
		#para cada empregada coloca na base de dados que 
		#cada uma faz todos os servicos
		add_service_type(srvp)
		#add time tables entries for each service provider
		add_time_table(srvp)
	end
end



def generate_service(user, maid)

	#Using 3 states
	# 1 - service waint for maid confirmation
	# 2 - confirmated by maid
	# 3 - completed
	# 4 -  rejected or canceled
	serv_date = Faker::Date.forward(30)
	start_hour = Faker::Time.between(serv_date, serv_date, :morning)
	end_hour = Faker::Time.between(serv_date, serv_date, :afternoon)
	service = Service.create(user_id: user.id,
							 service_provider_id: maid.id,
							 service_type_id: rand(1..4),
							 state: rand(1..4),
							 service_date: serv_date,
							 matching_date: Faker::Time.between(30.days.ago, 10.days.ago, :day),
							 creation_date: Faker::Time.between(9.days.ago, Time.now, :day),
							 service_start: start_hour,
							 service_end: end_hour,
							 zip_code: Faker::Address.zip_code,
							 district: Faker::Address.state, 
							 city: Faker::Address.city,
							 street: Faker::Address.street_address,
							 door_number: Faker::Address.building_number,
							 number_of_rooms: rand(1..12),
							 #e.g 1-casa, 2-escritorio, 3-armazem
							 #e.g: 1-mais d 200m2. 2-mais d 400m2, 3-mais d 600m2
							 building_type: rand(1..3), 
							 frequency: rand(1..3),
							 cleaning_stuff: [true, false].sample,
							 additional_information: Faker::Lorem.paragraph,
							 address:Faker::Address.street_address,
							 lat:Faker::Address.latitude,
							 long:Faker::Address.longitude
							 )
	return service

end

#Ranking é a avaliacao que o utilizador da ao servico prestado pelo professional
def generate_ranking(user, service)
	Ranking.create(user_id: user.id, service_id: service.id, value: rand(1..5))
end

#Feedback é um comentario que o professional de limpeza fez sobre o servico, 
#por exemplo a criticar o utilizador por ser mal educado.
def generate_feedback(maid, service)
	Feedback.create(service_provider_id: maid.id, 
									service_id: service.id, 
									description: Faker::Lorem.paragraph)

end

#From the generated users generate services
2000.times do |i|
	user = users.sample
	maid = maids.sample

	service = generate_service(user, maid)
	generate_ranking(user, service)
	generate_feedback(maid, service)

end

