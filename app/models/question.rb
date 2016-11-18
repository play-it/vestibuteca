class Question < ApplicationRecord
  belongs_to :source_application
  has_many :attachments, as: :attachable
  has_many :alternatives
end
