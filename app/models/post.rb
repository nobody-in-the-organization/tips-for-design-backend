class Post < ApplicationRecord
  belongs_to :user

  before_create :generate_uid

  acts_as_taggable

  private

  def generate_uid
    loop do
      self.uid = SecureRandom.urlsafe_base64(8)
      break if not Post.find_by(uid: self.uid)
    end
  end
end
