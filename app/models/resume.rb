class Resume < ActiveRecord::Base

  #after_save :registration_confirmation_notification #, if: :registration_confirmation?

  before_save :registration_confirmation_notification
  after_save :admin_confirmation_notification
  before_save :make_filename

  mount_uploader :attachment, AttachmentUploader  # Tells rails to use this uploader for this model.
  validates :name, presence: true, length: { maximum: 50 } # Make sure the owner's name is present.
  #validates :attachment , presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
            format:     { with: VALID_EMAIL_REGEX }

  def make_filename
    self.filename = attachment.url
  end

  private

  def registration_confirmation_notification
    UserMailer.registration_confirmation(self).deliver
  end

  def admin_confirmation_notification
    UserMailer.admin_confirmation(self).deliver
  end


end