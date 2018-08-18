class Transfer < ApplicationRecord
  belongs_to :wallet
  has_one :commission, dependent: :destroy
end
