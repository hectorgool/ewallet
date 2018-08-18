class Wallet < ApplicationRecord
	belongs_to :customer, optional: true
	has_many :transfers, dependent: :destroy
	#has_one :transfer #replace this for above
	accepts_nested_attributes_for :transfers, reject_if: :all_blank
end
