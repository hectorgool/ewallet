class Wallet < ApplicationRecord
	belongs_to :customer, optional: true
	has_many :transfers, dependent: :destroy
end
