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
      
    elsif params[:content].present?
      item = params[:content]

      @stores = Store.where('name LIKE ?', "%#{item}%" )
    else 
     @stores = Store.by_id
    end
    
  end

  def landing
    if signed_in?
      redirect_to home_index_path
    end
  end
end
