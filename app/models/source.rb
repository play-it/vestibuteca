class Source < ApplicationRecord
  has_many :source_applications
  has_many :questions, through: :source_applications
end
