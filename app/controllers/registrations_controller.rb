class RegistrationsController < Devise::RegistrationsController
    
    private
    
    def sign_up_params
        params.require(:customer).permit(:name, :surname, :address, :phone, :email, :password, :password_confirmation)
    end
    
    def account_update_params
        params.require(:customer).permit(:name, :surname, :address, :phone, :email, :password, :password_confirmation, :current_password)
    end
    
    def sign_up_params
        params.require(:dealer).permit(:name, :address, :phone, :email, :password, :password_confirmation)
    end
    
    def account_update_params
        params.require(:dealer).permit(:name, :address, :phone, :email, :password, :password_confirmation, :current_password)
    end
end