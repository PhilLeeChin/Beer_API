class User < ApplicationRecord
    has_many :styles
    has_many :beers, through: :styles
    has_secure_password
end
