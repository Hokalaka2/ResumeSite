class ContactMailer < ApplicationMailer
    default from: ENV["email_username"]

    def crazyname
        @contact = params[:contact]
        mail(to: ENV["email_username"], subject: @contact.title)
    end

   
end
