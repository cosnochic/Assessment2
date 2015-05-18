class IndustriesController < ApplicationController
def index
  @industries = Industry.all
end

def new
  @industry = Industry.new
end

def create
  @industry = Industry.new(industry_params)
  if @industry.save
    flash[:notice] = "INDUSTRY WAS CREATED SUCCESSFULLY."
    redirect_to industry_path(@industry)
  else
    render :new
  end
end

def update
  @industry = Industry.find_by_id(params[:id])
  if @industry.save
    flash[:notice] = "INDUSTRY WAS UPDATED SUCCESSFULLY."
    redirect_to industries_path
  else
    render :edit
  end
end

def destroy
  @industry = Industry.find(params[:id])
  @industry.delete
  redirect_to industries_path
  flash[:notice] = "INDUSTRY WAS DELETED."
end



private
def industry_params
  params.require(:industry).permit(:name, :description)
end

end
