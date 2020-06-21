  class ContactsController < ApplicationController
    def index
      @contacts = Contact.all
      @contact = Contact.new

    end

    def create
      @inquiry = Contact.create(contact_params)
      # if @inquiry.save
      InquiryMailer.send_mail(@inquiry).deliver_now
      redirect_to root_path
      
      # else
      #   render :index
      # end
    
    end

    private
    def contact_params
      params.require(:contact).permit(:name, :message, :email)
    end
  
  end




