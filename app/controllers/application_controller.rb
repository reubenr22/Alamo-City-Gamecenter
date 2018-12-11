class ApplicationController < ActionController::Base

 protect_from_forgery with: :exception

  before_action :authenticate_user!, except: [:add_to_cart, :view_order]
  before_action :categories, :brands

  def categories
  	@categories = Category.order(:name)
  end

  def brands
  @brands = Product.pluck(:brand).sort.uniq
end

end
