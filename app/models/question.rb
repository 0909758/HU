class Question < ApplicationRecord
  validates :email, :body, presence: true
  def gravatar
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
