class Message < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :content, length: { minimum: 2 }
end
