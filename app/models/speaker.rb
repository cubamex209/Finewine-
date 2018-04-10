class Speaker < ApplicationRecord
  validates :name, :email, presence: true
    validates :email, uniqueness: true
    validates :password, length: {minimum: 4}
    has_secure_password
    has_many :answers

    def self.confirm(params)
      @speaker = Speaker.find_by({email: params[:email]})
      @speaker ? @speaker.authenticate(params[:password]) : false 
  end
end
