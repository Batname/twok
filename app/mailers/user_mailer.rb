class UserMailer < ActionMailer::Base
  default :from => "dadubinin@gmail.com"

  def registration_confirmation(resume)
    @resume = resume

    #imagepath = "/public/resume/attachments/"
    imagepaid = resume.id
    imagepath = "/public/"
    imagepath2 = Resume.last.attachment


    if ! attachments.empty?
    attachments[resume.attachment.identifier] = File.read("#{Rails.root}/public#{imagepath2}")
    else
      attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    end

    mail(to: resume.email , cc:"dadubinin3@gmail.com", subject: "Hello #{resume.name}")
  end
end

