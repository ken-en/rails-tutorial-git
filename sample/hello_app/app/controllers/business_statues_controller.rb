class Business_statuesController < ApplicationController

  def index
    @business_statues = Business_statue.all
  end
  
  def show
    @business_statue = Business_statue.find(params[:id])
  end

  def new
    @business_statue = Business_statue.new
  end

  def create
    @business_statue = Business_statue.new(business_statue_params)

    if @business_statue.save
      flash[:success] = ‘Business_statue が正常に投稿されました'
      redirect_to @business_statue
    else
      flash.now[:danger] = ‘Business_statue が投稿されませんでした'
      render :new
    end
  end

  def edit
    @business_statue = Business_statue.find(params[:id])
  end
  
  def update
    @business_statue = Business_statue.find(params[:id])

    if @business_statue.update(business_statue_params)
      flash[:success] = ‘Business_statue は正常に更新されました'
      redirect_to @business_statue
    else
      flash.now[:danger] = ‘Business_statue は更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @business_statue = Business_statue.find(params[:id])
    @business_statue.destroy

    flash[:success] = ‘Business_statue は正常に削除されました'
    redirect_to business_statues_url
  end
  
  private

  # Strong Parameter
  def business_statue_params
    params.require(:business_statue).permit(:content)
  end
end