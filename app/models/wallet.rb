class Wallet < ApplicationRecord
	belongs_to :customer, optional: true
end
