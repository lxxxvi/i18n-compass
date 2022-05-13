class User < ApplicationRecord
  enum favourite_language: [:ruby, :crystal]
  validates :name, presence: true
end
