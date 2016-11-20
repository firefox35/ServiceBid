class RegistrationsController < Devise::RegistrationsController
    
    private 
    
    def sign_up_params
        if  customer_signed_up?
            params.require(:customer).permit(:firstname, :surname, :address, :phone, :email, :password, :password_confirmation)
        else
            params.require(:dealer).permit(:dealer_name, :address, :phone, :email, :password, :password_confirmation)
        end
    end
    def account_update_params
        if customer_signed_up?
           params.require(:customer).permit(:firstname, :surname, :address, :phone, :email, :password, :password_confirmation)
        else
           params.require(:dealer).permit(:dealer_name, :address, :phone, :email, :password, :password_confirmation)
        end
    end
end