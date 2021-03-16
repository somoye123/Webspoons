class User < ApplicationRecord
    validates :name, :email, :title, :status, :phone, presence: true

end
