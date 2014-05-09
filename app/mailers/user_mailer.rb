class UserMailer < ActionMailer::Base
  default :from => "dadubinin@gmail.com"

  def registration_confirmation(comment)
    @comment = comment

    #imagepath = "/public/resume/attachments/"
    # imagepaid = resume.id
    # imagepath = "/public/"
    # imagepath2 = Resume.last.attachment

    #attachments[resume.attachment.identifier] = File.read("#{Rails.root}/public#{imagepath2}")

    mail(to: comment.email, subject: "Hello #{comment.subject}")
  end



  def admin_confirmation(comment)
    @comment = comment
    mail(to:"dadubinin3@gmail.com", subject: "Hello #{comment.subject}")
  end

end

