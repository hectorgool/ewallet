class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.references :wallet, foreign_key: true
      t.decimal :tr_cantidad, :precision => 16, :scale => 2, :default => 0.00
      t.integer :enviado_a # 
      t.timestamps
    end
  end
end
