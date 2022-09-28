class ContactsController < ApplicationController

  before_action :authenticate_user!, except: %i[home]
  before_action :find_contact,only:[:show, :edit, :update, :destroy]
  
  def index
    @contacts = Contact.order(:first_name).page params[:page]
  end
   
  def show 
  end

  def new
    @contact = Contact.new 
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact 
    else
      render :new 
    end 
  end 
  
  def edit 
  end

  def update

    if @contact.update(contact_params)
      redirect_to @contact 
    else
      render :edit 
    end
  end

  def destroy
    @contact.destroy
    
    redirect_to root_path
  end 
  
  def find_contact
    @contact = Contact.find(params[:id])
  end
  private
    def contact_params 
      params.require(:contact).permit(:first_name,:last_name,:phone_number,:email,:company_name,:birthday,:address,:image)
    end
end
