class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart

  def cart
    session[:cart] ||= []
  end

  # def cart
  #   cart = current_cart
  #   # session[:cart] = cart
  #   # current_cart << cart
  # end
end
