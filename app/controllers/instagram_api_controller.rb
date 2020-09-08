class InstagramApiController < ActionController::API
    require 'json'
    require 'rest-client'
    def ver
        @stores = Store.all
        render json: @stores
    end

    def indexup
        params.permit!
        name = params[:name]
        @store = Store.find_by(name: name)
        
        link = params[:instagram_link] 
        u = params[:user_id]
        cat = params[:category_id]
    
        #@store = Store.create!(name: name, instagram_link: link, user_id: u, category_id: cat)
        @store.update(instagram_link: link)

        #@store = Store.create!(params)
        
        #@prettyjson =  calling(params[:name])
        render json: @store
    end
end