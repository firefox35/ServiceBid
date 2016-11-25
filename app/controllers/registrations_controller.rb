class RegistrationsController < Devise::RegistrationsController
    
   
    
    private 
    
    def signed_up_params
        if customer_signed_in?
            params.require(:customer).permit(:name, :address, :email, :password, :password_confirmation)
        else 
            params.require(:dealer).permit(:name, :address, :email, :password, :password_confirmation)
        end
    end
    def account_update_params
         if customer_signed_in?
           params.require(:customer).permit(:name, :address, :email, :password, :password_confirmation)
         else
           params.require(:dealer).permit(:name, :address, :email, :password, :password_confirmation)
         end
    end
end