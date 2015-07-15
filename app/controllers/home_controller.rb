class HomeController < ApplicationController
  
  def index
    @account = Account.new if user_signed_in?
  end
end
