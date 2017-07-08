class User < ApplicationRecord
  has_many :authentications, dependent: :destroy

  authenticates_with_sorcery!
end
