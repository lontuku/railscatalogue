class AdminController < ApplicationController
  def storeAdmin
    @stores = Store.all
  end
end
