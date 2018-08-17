class AddCustomerRefToWallets < ActiveRecord::Migration[5.2]
  def change
    add_reference :wallets, :customer, foreign_key: true
  end
end
