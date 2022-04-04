class Beer < ApplicationRecord
    # belongs_to :user
    has_many :styles
    has_many :users, through: :styles
end
