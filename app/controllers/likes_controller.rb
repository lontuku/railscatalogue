class LikesController < ApplicationController
    before_action :find_store
    before_action :find_like, only: [:destroy]

    def create
        #user = params[:user]
        if already_liked?
            flash[:notice] = "No ha sido posible quitar el like."
            redirect_to root_path
        else
            @store.likes.create!(user: current_user)
            respond_to do |format|
                if @store.save
                    @store
                    @store_id = @store.id 
                    @new_like = Like.where(store: @store)
                    format.js { render layout: false, notice: 'El tremendo like'}
                end
            end
        end

        # if @order.save
        # @order_products = OrderProduct.includes({ order: [:client, :user] }, :product).order(created_at: :desc)
        
        #redirect_to store_path(@store)     
    end

    def destroy
        if !(already_liked?)
            flash[:notice] = "No ha podido quitar el like"
        else
            @like.destroy!
            respond_to do |format|
                @store
                @store_id = @store.id 
                @new_like = Like.where(store: @store)
                format.js { render layout: false, notice: 'Intentando borrar'}
            end
            
        end
    end
  
    def find_like
        @like = @store.likes.find(params[:id])
    end

    def find_store
        @store = Store.find(params[:store_id])
    end

    private
    def already_liked? 
        Like.where(user_id: current_user.id, store_id: params[:store_id]).exists?
    end
end
