class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
  
  def hello
    render html: "hello, world!"
  end
=======
>>>>>>> 13c2bde9590d3a8fa5d6b9348c5b07abc4c8943b
end
