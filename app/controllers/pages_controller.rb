class PagesController < ApplicationController
  
  
  def home
    if customer_signed_in?
        redirect_to :controller=>'customer', :action => 'home'
        
    elsif dealer_signed_in?
        redirect_to :controller=>'dealer', :action => 'home'
    
    elsif admin_signed_in?
        redirect_to :controller=>'admin', :action => 'home'
    else 
        return :controller=>'pages', :action => 'home'
    end    
  end

  def about
    if customer_signed_in?
        redirect_to :controller=>'customer', :action => 'home'
        
    elsif dealer_signed_in?
        redirect_to :controller=>'dealer', :action => 'home'
    
    elsif admin_signed_in?
        redirect_to :controller=>'admin', :action => 'home'
    else 
        return :controller=>'pages', :action => 'home'
    end       
  end

  def contact
      
    if customer_signed_in?
        redirect_to :controller=>'customer', :action => 'home'
        
    elsif dealer_signed_in?
        redirect_to :controller=>'dealer', :action => 'home'
    
    elsif admin_signed_in?
        redirect_to :controller=>'admin', :action => 'home'
    else 
        return :controller=>'pages', :action => 'home'
    end  
  end
  
end
