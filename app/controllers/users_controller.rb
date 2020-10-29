class UsersController < ApplicationController
  attr_accessor :password, :password_confirmation
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    puts params[:password]
    @user = User.new(age: params[:age],city_id: params[:city],first_name: params[:firstname],last_name: params[:secondname],password: params[:password],password_confirmation: params[:passwordverif],description: params[:bio],email: params[:email] )
   if @user.save
     redirect_to "/gossips"
   else
     render "new"
   end
 end

end
