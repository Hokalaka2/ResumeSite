class ContactsController < ApplicationController
    
    def create
        @contact = Contact.create(contact_params)

        if @contact.save
            ContactMailer.with(contact: @contact).crazyname.deliver_later
            flash[:success] = "Message Sent"
            redirect_to root_path
        else
            render :new
        end
    end

    private 
    def contact_params
        params.require(:contact).permit(:email, :title, :message);
    end
end
