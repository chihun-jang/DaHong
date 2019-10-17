class StoresController < ApplicationController
  def index
    @category = params[:store_category]
    @stores = Store.where(store_category: @category)
 
  end
  def result
    @test = params[:store][:store_name]
    if @test.empty? || @test.nil?
      flash[:fail] = "빈칸없이 입력해주세요!"
      redirect_to :back
    else
      @results = Store.search(@test)
    end
  end

  def new
    @store = Store.new
  end
  
  def create
    @store = Store.new(store_params)
    
    if @store.save
      redirect_to @store
    else
      render "new"
    end
  end
  
  def edit
    @store = Store.find(params[:id])
    unless @store.user_id == current_user.id
      flash[:fail] = "본인이 작성한 글이 아닙니다."
      redirect_to :back
    end
  end
  def update
     @store = Store.find(params[:id])

  if @store.update(store_params)
    redirect_to @store
  else
    render 'edit'
  end
  end
  
  def destroy
    @store = Store.find(params[:id])
      if @store.user_id == current_user.id
        
        @store.destroy
        redirect_to '/'
      else
      flash[:fail] = "본인이 작성한 글이 아닙니다."
      redirect_to :back
      end
  end
  
  def show
    @store = Store.find(params[:id])
  end  
  private
    def store_params
      params.require(:store).permit(:store_name, :store_category,
                                    :address, :detail_address,
                                    :contact, :short_content,
                                    :detail_content, :photo,:photo2,:photo3,:user_id)
    end
    
    
end