class RegistrationsController < Devise::RegistrationsController
  layout 'application'

    def create_user
        final_params = user_params

        if final_params[:gender] == "gent" 
            final_params[:gender] = true
        else
            final_params[:gender] = false
        end
        final_params[:birth_date] = Date.strptime(final_params[:birth_date],"%d/%m/%Y")

        @user = User.new(final_params)
        @user.save
        redirect_to "/"

    end

    def new_user
        @user = User.new
    end

    def new_client
        @user = User.new
        @address = Address.new
    end

    def create_client
        params.permit!
        cli_params = client_params
        if cli_params[:gender] == "gent" 
            cli_params[:gender] = true
        else
            cli_params[:gender] = false
        end
        cli_params[:birth_date] = Date.strptime(cli_params[:birth_date],"%d/%m/%Y")
        @user = User.new(cli_params)
        @user.save!
        @user.service_provider.create(current_job:"",radius:0)
        @user.addresses.create(params[:user][:addresses])


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
                                         :cell_phone,
                                         :addresses)
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