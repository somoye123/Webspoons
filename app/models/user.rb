class User < ApplicationRecord
  validates :name, :email, :title, :status, :phone, presence: true

  scope :ordered_column, lambda {
                           order(updated_at: :desc).order(name: :asc).order(email: :asc).order(title: :asc).order(phone: :asc).order(status: :asc)
                         }
end
