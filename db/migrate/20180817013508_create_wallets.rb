class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
    	t.decimal :ingresos, :precision => 16, :scale => 2, :default => 0.00
    	t.decimal :gastos, :precision => 16, :scale => 2, :default => 0.00
      t.timestamps
    end
  end
end
