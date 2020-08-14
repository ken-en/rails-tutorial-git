class CompaniesController < ApplicationController

  def index
   @status = ['todo', 'doing', 'done'] 
   if params.has_key?(:company_name)
     @companies  =  Company.where(name: params[:company_name]).order(limit_date: "DESC")
   else
     @companies = Company.all.order(limit_date: "DESC")   
   end
  end
  
  
  def show
    id      = params[:id]
    @companies   = Company.find(id)
    @status = ['todo', 'doing', 'done']
  end

  def store
   company = Company.new
   company.name       = params[:name]
   company.work_description      = params[:work_description]
   company.limit_date = params[:limit_date]
   company.state = params[:state]
   company.save
   redirect_to '/companys', notice: 'タスクを作成しました。'
  end

  def update
   id = params[:id]
    company = Company.find(1)
    company.name       = params[:name]
    company.work_description      = params[:work_description]
    company.limit_date = params[:limit_date]
    company.state = params[:state]
    company.save
    redirect_to '/companys', notice: 'タスクを更新しました。'
  end

  def destroy
    company       = Company.find(params[:id])
    company.destroy
    redirect_to '/companys', notice: 'タスクを削除しました。'
  end
end
