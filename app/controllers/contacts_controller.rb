  class ContactsController < ApplicationController
    def index
      @contacts = Contact.all
      @contact = Contact.new
      @vlogs = Vlog.published
      @works = Work.published
    end

    def create
      @inquiry = Contact.new(contact_params)
      if @inquiry.save
        InquiryMailer.send_mail(@inquiry).deliver_now
        redirect_to root_path
      else
        redirect_to root_path

      end
      
      # else
      #   render :index
      # end
    
    end

    private
    def contact_params
      params.require(:contact).permit(:name, :message, :email)
    end
  
  end




