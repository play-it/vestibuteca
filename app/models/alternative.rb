class Alternative < ApplicationRecord
  belongs_to :question
  has_many :attachments, as: :attachable
end
