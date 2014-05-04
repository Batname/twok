class UserMailer < ActionMailer::Base
  default :from => "dadubinin@gmail.com"

  def registration_confirmation(resume)
    @resume = resume

    #imagepath = "/public/resume/attachments/"
    imagepaid = resume.id
    imagepath = "/public/"
    imagepath2 = Resume.last.attachment

    attachments[resume.attachment.identifier] = File.read("#{Rails.root}/public#{imagepath2}")

    mail(:to => "dadubinin1@gmail.com", :subject => "Registered")
  end
end

