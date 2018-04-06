class Speaker < ApplicationRecord
  validates :name, :email, presence: true
    validates :email, uniqueness: true
    validates :password, length: {minimum: 6}
    has_secure_password
end
