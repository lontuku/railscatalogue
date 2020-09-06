class StoresController < ApplicationController
  #before_action :set_store, only: [:show, :edit, :update, :destroy, :toggle_state]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  load_resource
  authorize_resource
  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.by_id
    @categories = Category.all

  end

  # GET /stores/1
  # GET /stores/1.json
  def show
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(store_params)
    @store.user = current_user
    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, notice: 'Store was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores/1
  # PATCH/PUT /stores/1.json
  def update
    respond_to do |format|
      if @store.update(store_params)
        @stores = Store.by_id
        format.js {render layout: false, notice: 'Se modificó el estado de la tienda.'}
        format.html { redirect_to @store, notice: 'Store was successfully updated.' }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'Store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_state
    new_state = @store.suspended == 1 ? 0 : 1
    new_text = new_state == 1 ? 'Aprobar' : 'Suspender'
    @store.update(suspended: new_state)
    render json: { btnText: new_text }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_params
      params.require(:store).permit(:name, :category_id, :instagram_link, :suspended, :user_id, images: [])
    end
end
