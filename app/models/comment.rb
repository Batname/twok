class Comment < ActiveRecord::Base

  before_save :registration_confirmation_notification
  after_save :admin_confirmation_notification

  has_attached_file :attachment
  has_attached_file :other_attachment
  #validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
  do_not_validate_attachment_file_type :attachment

  validates :subject, presence: true # Make sure the owner's name is present.
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
            format:     { with: VALID_EMAIL_REGEX }

  private

  def registration_confirmation_notification
    UserMailer.registration_confirmation(self).deliver
  end

  def admin_confirmation_notification
    UserMailer.admin_confirmation(self).deliver
  end

end
