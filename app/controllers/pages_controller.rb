class PagesController < ApplicationController
  def home
    
  end

  def about
    
  end

  def contact
    
  end
  
  def customer
    if customer_signed_in?
       redirect_to posts_path
    else
      redirect_to new_customer_session_path
    end
  end
  
  def dealer
    if dealer_signed_in?
       redirect_to posts_path
    else
      redirect_to new_dealer_session_path
    end
  end
end
