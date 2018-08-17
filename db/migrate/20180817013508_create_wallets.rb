class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
    	t.decimal :saldo, :precision => 16, :scale => 2
      t.timestamps
    end
  end
end
