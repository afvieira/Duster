class RegistrationsController < Devise::RegistrationsController
  layout 'application'
    #default method used by devise
    def create
      @navbar_user = false
      @sidebar = false
        puts params.inspect
        if params[:option] == "client"
            puts "---------------------->client"
            @user = User.new(client_params)
            @user.save

            puts @user.cc
            redirect_to :back
        else
            puts "----------------------->worker"
        end
    end

    def create_user
    end

    def new_user
    end

    private
        def client_params
            params.require(:user).permit(:photo, :name, :email, :password, :password_confirmation, :cc, :phone, :birth_date, :nationality, :gender)
        end

end
