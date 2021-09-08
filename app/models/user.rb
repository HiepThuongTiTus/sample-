class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true, length: { minimum: 2}
    validates :email, uniqueness: true
    before_create do 
        self.phone_number = "0211547875"
    end
end
