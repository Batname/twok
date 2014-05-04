class UserMailer < ActionMailer::Base
  default :from => "dadubinin@gmail.com"

  def registration_confirmation(resume)
    @resume = resume

    #imagepath = "/public/resume/attachments/"
    imagepaid = resume.id
    imagepath = "/public/"
    imagepath2 = Resume.last.attachment

    attachments[resume.attachment.identifier] = File.read("#{Rails.root}/public/#{resume.attachment}")
    mail(to: resume.email , cc:"dadubinin3@gmail.com", subject: "Hello #{resume.name}")
  end
end

