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

    def new_client
        @user = User.new
    end

    def create_client
        final_params = client_params
        if final_params[:gender] == "M"
            final_params[:gender] = true
        else
            final_params[:gender] = false
        end

        @user = User.new(final_params)
        @user.save!
        @user.service_provider.create(current_job:"",radius:0)


        redirect_to "/"
    end

    private
        def client_params
            params.require(:user).permit(:photo, 
                                         :name, 
                                         :email, 
                                         :password, 
                                         :password_confirmation, 
                                         :cc,
                                         :phone, 
                                         :birth_date, 
                                         :nationality, 
                                         :gender,
                                         :cell_phone)
        end

end
