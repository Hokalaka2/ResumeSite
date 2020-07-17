class PagesController < ApplicationController
    def index
        @contact = Contact.new
    end
    def about

    end
    def resume
    
    end
    def mission

    end
    def resume_pdf
        send_file("#{Rails.root}/public/Resume.pdf",
                    filename: "Resume.pdf",
                    type: "application/pdf"
                )
    end
end
