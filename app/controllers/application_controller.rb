class ApplicationController < ActionController::Base

 protect_from_forgery with: :exception

  before_action :authenticate_user! 
  before_action :categories 

  def categories
  	@categories = Category.order(:name)
  end
end
