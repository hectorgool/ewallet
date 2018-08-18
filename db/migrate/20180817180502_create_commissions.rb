class CreateCommissions < ActiveRecord::Migration[5.2]
  def change
    create_table :commissions do |t|
      t.references :transfer, foreign_key: true
      t.decimal :commission, :precision => 16, :scale => 2, :default => 0.00
      t.timestamps
    end
  end
end
