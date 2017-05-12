class SourceApplication < ApplicationRecord
  belongs_to :source
  has_many :questions
end
