class WelcomeController < ApplicationController
  layout "welcome"
  def index
    @guestbook = Guestbook.new
  end
  def number_of_maids
  	puts params.inspect
  	# Get selected city
  	params.permit!
  	city = params[:city]

  	# Get all addresses with the city name
  	addresses = Address.where(district:city)

  	#For each address compare with main user table
  	maids = []
  	addresses.each do |add|
  	 	maids << ServiceProvider.where(user_id:add.user_id)
  	end
  	
  	puts I18n.locale
  	
  	if(I18n.locale.to_s.eql? "en")
  		trad1="There are "
  		trad2=" maids near your location!"
  	else
  		trad1="Existem "
  		trad2=" empregadas perto de si!"
  	end

  	puts trad1
  	puts trad2

  	render :json => {:result => maids.size,:traducao1 => trad1, :traducao2 => trad2}

  end
end
