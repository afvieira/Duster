class RegistrationsController < Devise::RegistrationsController
  layout 'application'

    def create_user


        final_params = user_params
        if final_params[:gender] == "gent" 
            final_params[:gender] = true
        else
            final_params[:gender] = false
        end
        puts final_params.inspect    
          
        @user = User.new(final_params)
        @user.save
        redirect_to "/"

    end

    def new_user
        @user = User.new
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
        end
        def user_params
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
