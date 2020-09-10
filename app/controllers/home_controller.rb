class HomeController < ApplicationController
  def index
    @user = current_user
    @stores = Store.all
    @categories = Category.all
    #@likes = Like.all
    cat = params[:categ]
    #flash.alert = "User not found."
    if !cat.nil?
      @stores = Store.where(:category_id => cat)
    else
      @stores = Store.by_id
    end

    def stats
    end 
  end
end
