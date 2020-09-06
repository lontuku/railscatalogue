class HomeController < ApplicationController
  def index
    
    @stores = Store.all
    @categories = Category.all
    cat = params[:categ]
    #flash.alert = "User not found."
    if !cat.nil?
      @stores = Store.where(:category_id => cat)
    else
      @stores = Store.by_id
    end
  end
end
