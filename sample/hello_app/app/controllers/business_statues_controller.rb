class BusinessStatuesController < ApplicationController
 
  def index
   @nearest_date = nil
   bss = BusinessStatue.where("date IS NOT NULL AND date != ''").order(date: :asc).limit(1)
   @nearest_date = bss.first.date if bss.present?
   @business_statues = BusinessStatue.all
  case params[:sort]
  when 'situation'
   @business_statues = @business_statues.order(situation: "ASC")
  else
   @business_statues = @business_statues.order(date: "ASC")
  end
  @business_statues = @business_statues.page(params[:page]).per(10)
  end



  
  def show 
    @business_statue = BusinessStatue.find(params[:id])
  end

  def new 
    @business_statue = BusinessStatue.new
  end

  def create 
    @business_statue = BusinessStatue.new(business_statue_params)
    if @business_statue.save
      flash[:success] = 'Business_statue が正常に投稿されました'
      redirect_to business_statues_path
    else
      flash.now[:danger] = 'Business_statue が投稿されませんでした'
      render :new
    end
  end

  def edit 
    @business_statue = BusinessStatue.find(params[:id])
  end
  
  def update 
    @business_statue = BusinessStatue.find(params[:id])

    if @business_statue.update(business_statue_params)
      flash[:success] = 'Business_statue は正常に更新されました'
      redirect_to("/business_statues/#{@business_statue.id}") 
    else
      flash.now[:danger] = 'Business_statue は更新されませんでした'
      render :edit
    end
  end
  
  def destroy 
    @business_statue = BusinessStatue.find(params[:id])
    @business_statue.destroy

    flash[:success] = 'Business_statue は正常に削除されました'
    redirect_to business_statues_url
  end
  
  private

  # Strong Parameter
  def business_statue_params
    params.require(:business_statue).permit(:content, :customer, :business, :date, :situation)
  end
end

