class HomeController < ApplicationController
  def index
  end
  def map
    @category = params[:store_category]
    @test2 = Store.where(store_category: @category)
  end
end
