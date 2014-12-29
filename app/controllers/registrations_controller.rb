class RegistrationsController < Devise::RegistrationsController
  layout 'registration'

    def create
        puts params.inspect
        if params[:option] == "client"
            puts "---------------------->client"
            @user = User.new(client_params)
            @user.save
            puts @user.inspect
            redirect_to :back
        else
            puts "----------------------->worker"
        end
            
    end
    
    private
        def client_params
            params.require(:user).permit(:photo, :name, :email, :password, :password_confirmation, :cc, :phone, :birth_date, :nationality, :gender)
        end

end
