class UsersController < ApplicationController
#  before_filter :require_no_user, :only => [:new, :create]
#  before_filter :require_user, :only => [:show, :edit, :update
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default account_url
    else
      render :action => :new
    end
  end
  
  def show
  	#@user = User.find params[:id]
	@user = User.find_by_login(params[:id])
	@messages = @user.messages.paginate(:page => params[:page], :per_page => 5, :order => 'messages.created_at DESC')
	@message = Message.new
  end
 
  def edit
    @user = User.find params[:id]
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
    
  end
  
   def index # Rajout pour faire un listing de tous les messages de tous les utilisateurs
    @messages = Message.paginate(:page => params[:page], :per_page => 5, :order => 'messages.created_at DESC')
    @message = Message.new
   end

end
