class Wallet < ApplicationRecord
	belongs_to :customer, optional: true
	has_many :transfer, dependent: :destroy
	#has_one :transfer #replace this for above
end
